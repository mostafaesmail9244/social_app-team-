import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper.dart';
import '../../../../core/firebase_service/firebase_constants.dart';
import '../../../../core/firebase_service/firebase_failures.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../profile/data/models/profile_response/profile_response.dart';
import '../models/room_model/rooms_response.dart';

class RoomRepo {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Either<Failure, UsersResponse>> getAllUsers() async {
    try {
      final QuerySnapshot<Map<String, dynamic>> snap = await _firestore
          .collection(FireBaseConstants.usersCollection)
          .where('id', isNotEqualTo: CashHelper.get(key: CashConstants.userId))
          .get();

      UsersResponse response = UsersResponse.fromJson(snap.docs);
      return right(response);
    } catch (e) {
      if (e is FirebaseException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, String>> creatRoom({
    required String toId,
    required String userName,
    required String userPicture,
  }) async {
    final String fromID = CashHelper.get(key: CashConstants.userId);
    final List<String> members = [fromID, toId];

    try {
      final RoomsData chatRoom = RoomsData(
        id: members.toString(),
        members: members,
        lastMessage: '',
        lastMessageTime: DateTime.now().millisecondsSinceEpoch.toString(),
        createdAt: DateTime.now().millisecondsSinceEpoch.toString(),
      );
      _firestore
          .collection(FireBaseConstants.roomsCollection)
          .doc(members.toString())
          .set(chatRoom.toJson());
      return right("Success");
    } catch (e) {
      if (e is FirebaseException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, RoomsResponse>> getRoom() async {
    try {
      final QuerySnapshot<Map<String, dynamic>> snap = await _firestore
          .collection(FireBaseConstants.roomsCollection)
          // .orderBy('createdAt', descending: true)
          .where('members',
              arrayContains: CashHelper.get(key: CashConstants.userId))
          .get();

      final List<RoomsData> rooms =
          await Future.wait(snap.docs.map((doc) async {
        final RoomsData room = RoomsData.fromSnapshot(doc);

        // Assume each room has exactly one other member
        final String otherMemberId = room.members.firstWhere(
          (memberId) => memberId != CashHelper.get(key: CashConstants.userId),
        );

        UserData? otherMemberDetails;
        DocumentSnapshot<Map<String, dynamic>> userDoc = await _firestore
            .collection(FireBaseConstants.usersCollection)
            .doc(otherMemberId)
            .get();
        if (userDoc.exists) {
          otherMemberDetails = UserData.fromSnapshot(userDoc);
        }

        return room.copyWith(memberDetails: otherMemberDetails);
      }).toList());

      RoomsResponse response = RoomsResponse(rooms: rooms);
      return right(response);
    } catch (e) {
      if (e is FirebaseException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, RoomsData>> getRoomByMembers(
    List<String> members,
  ) async {
    try {
      final QuerySnapshot<Map<String, dynamic>> snap = await _firestore
          .collection(FireBaseConstants.roomsCollection)
          .where('members', isEqualTo: members)
          .get();

      if (snap.docs.isEmpty) {
        return left(ServerFailure("Room not found"));
      }

      final DocumentSnapshot<Map<String, dynamic>> roomDoc = snap.docs.first;
      final RoomsData room = RoomsData.fromSnapshot(roomDoc);

      // Assume each room has exactly one other member
      final String otherMemberId = room.members.firstWhere(
        (memberId) => memberId != CashHelper.get(key: CashConstants.userId),
      );

      UserData? otherMemberDetails;
      DocumentSnapshot<Map<String, dynamic>> userDoc = await _firestore
          .collection(FireBaseConstants.usersCollection)
          .doc(otherMemberId)
          .get();
      if (userDoc.exists) {
        otherMemberDetails = UserData.fromSnapshot(userDoc);
      }

      return right(room.copyWith(memberDetails: otherMemberDetails));
    } catch (e) {
      if (e is FirebaseException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, RoomsData>> getOrCreateRoom({
    required String toId,
    required String userName,
    required String userPicture,
  }) async {
    final String fromID = CashHelper.get(key: CashConstants.userId);
    final List<String> members = [fromID, toId];

    // Check if the room exists
    final roomResult = await getRoomByMembers(members);
    return roomResult.fold(
      (failure) async {
        // Room does not exist, create it
        final createResult = await creatRoom(
          toId: toId,
          userName: userName,
          userPicture: userPicture,
        );
        return createResult.fold(
          (createFailure) => left(createFailure),
          (_) async {
            // Fetch the newly created room
            final newRoomResult = await getRoomByMembers(members);
            return newRoomResult;
          },
        );
      },
      (room) => right(room),
    );
  }
}
