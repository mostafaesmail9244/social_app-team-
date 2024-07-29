import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper.dart';
import '../../../../core/firebase_service/firebase_constants.dart';
import '../../../../core/firebase_service/firebase_failures.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../profile/data/models/profile_response/profile_response.dart';

class SearchRepo {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Either<Failure, UsersResponse>> getAllUsers() async {
    try {
      final QuerySnapshot<Map<String, dynamic>> snap = await _firestore
          .collection(FireBaseConstants.usersCollection)
          .where('id', isNotEqualTo: CashHelper.get(key: CashConstants.userId))
          .get();

      UsersResponse response = UsersResponse.fromJson(snap.docs);
      return right(response);
    } catch (e) {
      if (e is FirebaseException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
