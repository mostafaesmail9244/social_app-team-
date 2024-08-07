import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:logger/logger.dart';
import 'package:social_app/core/firebase_service/firebase_constants.dart';
import 'package:social_app/features/home/data/source/local/home_db_service.dart';
import '../../../../core/firebase_service/firebase_failures.dart';
import '../model/posts_response.dart';

class GetPostsRepo {
  final HomeDbService _homeDbService;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  GetPostsRepo(this._homeDbService);

  Future<Either<Failure, PostsResponse>> getPostsData() async {
    try {
      // Check connectivity status
      final connectivityResult = await Connectivity().checkConnectivity();
      PostsResponse? response;

      if (connectivityResult != ConnectivityResult.none) {
        // Fetch data from Firestore
        final QuerySnapshot<Map<String, dynamic>> snap = await _firestore
            .collection(FireBaseConstants.postsCollection)
            .orderBy('date', descending: true)
            .get();

        response = PostsResponse.fromJson(snap.docs);
        Logger().d('Get Posts from Firebase');
        await _homeDbService.insertItem(object: response); // Save to local DB
      } else {
        // Fetch data from local database
        response = await _homeDbService.getAll();
        Logger().d('Get Posts from local DB');
      }

      return right(response!);
    } catch (e) {
      if (e is FirebaseException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  Future<void> deletePost({required String postId}) async {
    try {
      await _firestore
          .collection(FireBaseConstants.postsCollection)
          .doc(postId)
          .delete();
      Logger().d('Deleted post with ID: $postId');
    } catch (e) {
      Logger().e('Error deleting post: $e');
      throw ServerFailure(e.toString());
    }
  }

  // Future<int> countCommentsForPost(String postId) async {
  //   final QuerySnapshot<Map<String, dynamic>> commentSnapshot = await _firestore
  //       .collection(FireBaseConstants.postsCollection)
  //       .doc(postId)
  //       .collection(FireBaseConstants.commentsCollection)
  //       .get();
  //
  //   return commentSnapshot.size;
  // }
}
