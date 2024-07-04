import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/firebase_service/firebase_constants.dart';
import '../../../../core/firebase_service/firebase_failures.dart';
import '../model/posts_response.dart';

class GetPostsRepo {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<Either<Failure, PostsResponse>> getPosts() async {
    try {
      QuerySnapshot<Map<String, dynamic>> snap = await _firestore
          .collection(FireBaseConstants.postsCollection)
          .orderBy('date', descending: true)
          .get();
      PostsResponse response = PostsResponse.fromJson(snap.docs);
      return right(response);
    } catch (e) {
      if (e is FirebaseException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
