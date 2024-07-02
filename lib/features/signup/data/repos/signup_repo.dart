import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import '../../../../core/firebase_service/firebase_constants.dart';
import '../../../../core/firebase_service/firebase_failures.dart';
import '../models/signup_request/signup_request_body.dart';
import 'package:path/path.dart';

class SignupRepo {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final Reference firebaseRef = FirebaseStorage.instance.ref();

  Future<Either<Failure, UserCredential>> postSignup(
      {required SignupRequestBody body, required File image}) async {
    try {
      String? downloadURL;
      String fileName = basename(image.path);
      Reference fire = firebaseRef.child('users/$fileName');
      UploadTask uploadTask = fire.putFile(image);
      TaskSnapshot taskSnapshot = await uploadTask;
      downloadURL = await taskSnapshot.ref.getDownloadURL();

      UserCredential user = await _firebaseAuth.createUserWithEmailAndPassword(
          email: body.email, password: body.password);
      Map<String, dynamic> userMap = {
        "id": user.user!.uid,
        "name": "${body.firstName} ${body.lastName}",
        "email": body.email,
        "password": body.password,
        "phone": body.phone,
        "image": downloadURL,
        "bio": "write your bio",
        "coverImage": '',
      };
      CollectionReference userColl =
          _firestore.collection(FireBaseConstants.usersCollection);
      await userColl.doc(user.user!.uid).set(userMap);
      return right(user);
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
