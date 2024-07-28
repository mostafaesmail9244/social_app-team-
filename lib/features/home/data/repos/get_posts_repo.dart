import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:social_app/core/firebase_service/firebase_constants.dart';
import '../../../../core/firebase_service/firebase_failures.dart';
import '../model/posts_response.dart';

class GetPostsRepo {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<Either<Failure, PostsResponse>> getPostsData() async {
    try {
      final QuerySnapshot<Map<String, dynamic>> snap = await _firestore
          .collection(FireBaseConstants.postsCollection)
          .orderBy('date', descending: true)
          .get();

      // final List<PostsData> posts = await Future.wait(
      //   postSnapshot.docs.map((postDoc) async {
      //     int commentCount = await countCommentsForPost(postDoc.id);
      //     PostsData postData = PostsData.fromSnapshot(postDoc)
      //         .copyWith(commentCount: commentCount);
      //     return postData;
      //   }).toList(),
      // );

      PostsResponse response = PostsResponse.fromJson(snap.docs);
      return right(response);
    } catch (e) {
      if (e is FirebaseException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  // Future<int> countCommentsForPost(String postId) async {
  //   final QuerySnapshot<Map<String, dynamic>> commentSnapshot = await _firestore
  //       .collection(FireBaseConstants.postsCollection)
  //       .doc(postId)
  //       .collection(FireBaseConstants.commentsCollection)
  //       .get();

  //   return commentSnapshot.size;
  // }

  Future<Either<String, String>> addOrRemoveLike(
      String postID, String uid, List like) async {
    final loveList = like;
    try {
      if (loveList.contains(uid)) {
        loveList.remove(uid);

        await _firestore
            .collection(FireBaseConstants.postsCollection)
            .doc(postID)
            .update({
          'loves': FieldValue.arrayRemove([uid])
        });
      } else {
        loveList.add(uid);
        await _firestore
            .collection(FireBaseConstants.postsCollection)
            .doc(postID)
            .update({
          'loves': FieldValue.arrayUnion([uid])
        });
      }
      return right('success');
    } catch (e) {
      return right('error');
    }
  }
}
