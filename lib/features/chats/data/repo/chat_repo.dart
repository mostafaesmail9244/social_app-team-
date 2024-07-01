import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:social_app/features/profile/data/models/profile_response/profile_response.dart';
import '../../../../core/firebase_service/firebase_constants.dart';
import '../../../../core/firebase_service/firebase_failures.dart';

class ChatRepo {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final Reference firebaseRef = FirebaseStorage.instance.ref();
  Future<Either<Failure, List<UserResponse>>> getAllUsers(
      {required String uid}) async {
    List<UserResponse> users = [];
    try {
      final snap =
          await _firestore.collection(FireBaseConstants.usersCollection).get();
      for (var user in snap.docs) {
        if (user.id != uid) {
          users.add(UserResponse.fromSnapshot(user));
        }
      }
      return right(users);
    } catch (e) {
      if (e is FirebaseException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
