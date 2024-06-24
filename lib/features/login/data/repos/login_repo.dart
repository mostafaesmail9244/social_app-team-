import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../../core/firebase_service/firebase_failures.dart';
import '../models/login_request/login_request_body.dart';

class LoginRepo {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<Either<Failure, UserCredential>> postLogin(
      {required LoginRequestBody body}) async {
    try {
      UserCredential user = await _firebaseAuth.signInWithEmailAndPassword(
          email: body.email, password: body.password);
      return right(user);
    } catch (e) {
      if (e is FirebaseException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
