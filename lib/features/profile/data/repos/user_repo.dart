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

  Future<Either<Failure, UserData>> getMyData({required String uid}) async {
    try {
      final snap = await _firestore
          .collection(FireBaseConstants.usersCollection)
          .doc(uid)
          .get();
      final UserData response = UserData.fromSnapshot(snap);
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
    required String bio,
    File? profileImage,
    File? coverImage,
  }) async {
    try {
      String? downloadImageURL;
      String? downloadCoverURL;

      if (profileImage != null) {
        downloadImageURL = await uploadImage(profileImage);
      }
      if (coverImage != null) {
        downloadCoverURL = await uploadImage(coverImage);
      }

      _firestore.collection(FireBaseConstants.usersCollection).doc(uid).update({
        'image': profileImage == null
            ? CashHelper.get(key: CashConstants.userImage)
            : downloadImageURL,
        'coverImage': coverImage == null
            ? CashHelper.get(key: CashConstants.coverImage)
            : downloadCoverURL,
        'name': name,
        'bio': bio,
        'phone': phone,
      });

      return right("Editing Successfully");
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  Future<String> uploadImage(File image) async {
    String fileName = basename(image.path);
    Reference fire = firebaseRef.child('users/$fileName');
    UploadTask uploadTask = fire.putFile(image);
    TaskSnapshot taskSnapshot = await uploadTask;
    return await taskSnapshot.ref.getDownloadURL();
  }
}
