// import 'dart:async';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:dartz/dartz.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:social_app/core/helper/cash_helper/cash_helper.dart';
// import 'package:social_app/features/chats/data/models/message_model/message_model.dart';
// import 'package:social_app/features/profile/data/models/profile_response/profile_response.dart';
// import '../../../../core/firebase_service/firebase_constants.dart';
// import '../../../../core/firebase_service/firebase_failures.dart';
// import '../../../../core/helper/cash_helper/cash_helper_constants.dart';

// class GetUsersRepo {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final Reference firebaseRef = FirebaseStorage.instance.ref();
//   List<MessageModel> messages = [];

//   Future<Either<Failure, UsersResponse>> getAllUsers(
//       {required String uid}) async {
//     try {
//       QuerySnapshot<Map<String, dynamic>> snap = await _firestore
//           .collection(FireBaseConstants.usersCollection)
//           .where(
//               (element) => element != CashHelper.get(key: CashConstants.userId))
//           .get();

//       UsersResponse response = UsersResponse.fromJson(snap.docs);

//       return right(response);
//     } catch (e) {
//       if (e is FirebaseException) {
//         return left(ServerFailure.fromFirebaseAuthException(e));
//       }
//       return left(ServerFailure(e.toString()));
//     }
//   }
// }
