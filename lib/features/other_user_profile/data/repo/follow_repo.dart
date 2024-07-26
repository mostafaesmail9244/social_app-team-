import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import '../../../../core/firebase_service/firebase_constants.dart';
import '../../../../core/firebase_service/firebase_failures.dart';
import '../../../profile/data/models/profile_response/profile_response.dart';

class FollowRepo {
  final CollectionReference _users =
      FirebaseFirestore.instance.collection(FireBaseConstants.usersCollection);

  Future<void> followUser(
      {required String myId, required String followUserId}) async {
    final DocumentSnapshot documentSnapshot = await _users.doc(myId).get();
    final List following = (documentSnapshot.data()! as dynamic)['following'];
    try {
      if (following.contains(followUserId)) {
        await _users.doc(myId).update({
          'following': FieldValue.arrayRemove([followUserId])
        });

        await _users.doc(followUserId).update({
          'followers': FieldValue.arrayRemove([myId])
        });
      } else {
        await _users.doc(myId).update({
          'following': FieldValue.arrayUnion([followUserId])
        });
        await _users.doc(followUserId).update({
          'followers': FieldValue.arrayUnion([myId])
        });
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<Either<Failure, UserData>> getUserInfo({required String uid}) async {
    try {
      final snap = await _users.doc(uid).get();
      final UserData response =
          UserData.fromSnapshot(snap as DocumentSnapshot<Map<String, dynamic>>);
      return right(response);
    } catch (e) {
      if (e is FirebaseException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
