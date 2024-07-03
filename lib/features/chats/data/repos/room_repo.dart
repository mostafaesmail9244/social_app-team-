import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper.dart';
import 'package:social_app/features/chats/data/models/room_model/rooms_response.dart';
import '../../../../core/firebase_service/firebase_constants.dart';
import '../../../../core/firebase_service/firebase_failures.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../profile/data/models/profile_response/profile_response.dart';

class RoomRepo {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Either<Failure, UsersResponse>> getAllUsers(
      {required String uid}) async {
    try {
      QuerySnapshot<Map<String, dynamic>> snap = await _firestore
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
    final List<String> members = [fromID, toId]..sort((a, b) => a.compareTo(b));

    try {
      RoomsData chatRoom = RoomsData(
        id: members.toString(),
        members: members,
        lastMessage: '',
        lastMessageTime: DateTime.now().millisecondsSinceEpoch.toString(),
        createdAt: DateTime.now().millisecondsSinceEpoch.toString(),
        toUserId: toId,
        toUserName: userName,
        toUserpicture: userPicture,
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
      QuerySnapshot<Map<String, dynamic>> snap = await _firestore
          .collection(FireBaseConstants.roomsCollection)
          .where('members',
              arrayContains: CashHelper.get(key: CashConstants.userId))
          .get();
      RoomsResponse response = RoomsResponse.fromJson(snap.docs);

      return right(response);
    } catch (e) {
      if (e is FirebaseException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
