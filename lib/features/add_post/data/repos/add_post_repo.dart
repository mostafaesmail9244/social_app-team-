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
  String? downloadURL;
  Future<Either<Failure, String>> addPost({
    required String content,
    File? image,
  }) async {
    try {
      if (image != null) {
        String fileName = basename(image.path);
        Reference fire = firebaseRef.child('postsImages/$fileName');
        UploadTask uploadTask = fire.putFile(image);
        TaskSnapshot taskSnapshot = await uploadTask;
        downloadURL = await taskSnapshot.ref.getDownloadURL();
      }

      final post =
          _firestore.collection(FireBaseConstants.postsCollection).doc();
      await post.set(AddPostRequestBody(
        postId: post.id,
        image: image == null ? '' : downloadURL!,
        content: content,
        userName: CashHelper.get(key: CashConstants.userName),
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
