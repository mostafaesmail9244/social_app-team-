import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import '../../../../core/firebase_service/firebase_constants.dart';
import '../../../../core/firebase_service/firebase_failures.dart';
import '../../../home/data/model/posts_response.dart';

class OtherUserRepo {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final Reference firebaseRef = FirebaseStorage.instance.ref();

  Future<Either<Failure, PostsResponse>> getOtherUserPostsInfo(
      {required String uid}) async {
    try {
      QuerySnapshot<Map<String, dynamic>> postSnapshot = await _firestore
          .collection(FireBaseConstants.postsCollection)
          //.orderBy('date', descending: true)
          .where('userId', isEqualTo: uid)
          .get();

      final List<PostsData> posts = await Future.wait(
        postSnapshot.docs.map((postDoc) async {
          int commentCount = await countCommentsForPost(postDoc.id);
          PostsData postData = PostsData.fromSnapshot(postDoc)
              .copyWith(commentCount: commentCount);
          return postData;
        }).toList(),
      );
      return right(PostsResponse(posts: posts));
    } catch (e) {
      if (e is FirebaseException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  Future<int> countCommentsForPost(String postId) async {
    final QuerySnapshot<Map<String, dynamic>> commentSnapshot = await _firestore
        .collection(FireBaseConstants.postsCollection)
        .doc(postId)
        .collection(FireBaseConstants.commentsCollection)
        .get();

    return commentSnapshot.size;
  }
}
