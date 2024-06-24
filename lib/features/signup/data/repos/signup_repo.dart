import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../core/firebase_service/firebase_constants.dart';
import '../../../../core/firebase_service/firebase_failures.dart';
import '../models/signup_request/signup_request_body.dart';

class SignupRepo {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Either<Failure, UserCredential>> postSignup(
      {required SignupRequestBody body}) async {
    try {
      UserCredential user = await _firebaseAuth.createUserWithEmailAndPassword(
          email: body.email, password: body.password);
      Map<String, dynamic> userMap = {
        "id": user.user!.uid,
        "name": "${body.firstName} ${body.lastName}",
        "email": body.email,
        "address": body.address,
        "phone": body.phone,
        "image": body.image,
        'coverImage': '',
        'bio': '',
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
