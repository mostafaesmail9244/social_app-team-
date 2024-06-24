import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:path/path.dart';
import '../../../../core/firebase_service/firebase_constants.dart';
import '../../../../core/firebase_service/firebase_failures.dart';
import '../../../../core/helper/cash_helper/cash_helper.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../models/profile_response/profile_response.dart';

class UserRepo {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final Reference firebaseRef = FirebaseStorage.instance.ref();

  Future<Either<Failure, UserResponse>> getUserInfo(
      {required String uid}) async {
    try {
      final snap = await _firestore
          .collection(FireBaseConstants.usersCollection)
          .doc(uid)
          .get();
      final UserResponse response = UserResponse.fromSnapshot(snap);
      return right(response);
    } catch (e) {
      if (e is FirebaseException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, String>> editUserInfo({
    required String uid,
    required String name,
    required String phone,
    required String address,
    File? image,
  }) async {
    try {
      String? downloadURL;
      if (image != null) {
        String fileName = basename(image.path);
        Reference fire = firebaseRef.child('users/$fileName');
        UploadTask uploadTask = fire.putFile(image);
        TaskSnapshot taskSnapshot = await uploadTask;
        downloadURL = await taskSnapshot.ref.getDownloadURL();
      }

      _firestore.collection(FireBaseConstants.usersCollection).doc(uid).update({
        'image': image == null
            ? CashHelper.get(key: CashConstants.imageUser)
            : downloadURL,
        'name': name,
        'phone': phone,
        'address': address,
      });
      return right("Editing Successfully");
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
