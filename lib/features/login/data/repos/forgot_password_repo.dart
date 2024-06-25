import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../core/firebase_service/firebase_failures.dart';

class ForgotPasswordRepo {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<Either<Failure, String>> postForgotPassword(
      {required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return right(
          "We have sent you an email to recover password, please check email");
    } catch (e) {
      if (e is FirebaseException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
