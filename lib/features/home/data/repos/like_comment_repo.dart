import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:social_app/core/firebase_service/firebase_constants.dart';
import 'package:social_app/features/home/data/model/posts_response.dart';

class LikeCommentRepo {
  final CollectionReference _post =
      FirebaseFirestore.instance.collection(FireBaseConstants.postsCollection);

  Future<Either<String, PostsData>> toggleLike({
    required String myId,
    required String postId,
  }) async {
    final DocumentSnapshot documentSnapshot = await _post.doc(postId).get();
    final List loves = (documentSnapshot.data()! as dynamic)['loves'];
    try {
      if (loves.contains(myId)) {
        await _post.doc(postId).update({
          'loves': FieldValue.arrayRemove([myId])
        });
      } else {
        await _post.doc(postId).update({
          'loves': FieldValue.arrayUnion([myId])
        });
      }
      final DocumentSnapshot documentSnapshot = await _post.doc(postId).get();
      final PostsData response = PostsData.fromSnapshot(
          documentSnapshot as DocumentSnapshot<Map<String, dynamic>>);
      return right(response);
    } catch (e) {
      return left(e.toString());
    }
  }

  Stream<PostsData> likesStream(String postId) {
    return _post.doc(postId).snapshots().map((snapshot) {
      return PostsData.fromSnapshot(
          snapshot as DocumentSnapshot<Map<String, dynamic>>);
    });
  }

  Stream<int> commentsLengthStream(String postId) {
    return _post
        .doc(postId)
        .collection(FireBaseConstants.commentsCollection)
        .snapshots()
        .map((snapshot) => snapshot.docs.length);
  }
}
