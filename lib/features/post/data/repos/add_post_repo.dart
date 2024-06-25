import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper_constants.dart';
import '../../../../core/firebase_service/firebase_constants.dart';
import '../../../../core/firebase_service/firebase_failures.dart';
import '../models/add_post_request_body/add_post_request_body.dart';

class AddPostRepo {
  final Reference firebaseRef = FirebaseStorage.instance.ref();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Either<Failure, String>> addPost({
    required File image,
    required String content,
  }) async {
    try {
      String fileName = basename(image.path);
      Reference fire = firebaseRef.child('postsImages/$fileName');
      UploadTask uploadTask = fire.putFile(image);
      TaskSnapshot taskSnapshot = await uploadTask;
      String downloadURL = await taskSnapshot.ref.getDownloadURL();

      await _firestore
          .collection(FireBaseConstants.postsCollection)
          .add(AddPostRequestBody(
            image: downloadURL,
            content: content,
            userName: CashHelper.get(key: CashConstants.name),
            userImage: CashHelper.get(key: CashConstants.userImage),
            userId: CashHelper.get(key: CashConstants.userId),
            date: DateTime.now().millisecondsSinceEpoch.toString(),
          ).toJson());

      return right("Success");
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
