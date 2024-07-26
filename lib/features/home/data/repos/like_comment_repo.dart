import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:social_app/core/firebase_service/firebase_constants.dart';
import 'package:social_app/features/home/data/model/posts_response.dart';

class LikeCommentRepo {
  final CollectionReference _post =
      FirebaseFirestore.instance.collection(FireBaseConstants.postsCollection);
  Future<Either<String, PostsData>> getSpecificPostData(
      {required String myId, required String postId}) async {
    final DocumentSnapshot documentSnapshot = await _post.doc(postId).get();
    final List loves = await (documentSnapshot.data()! as dynamic)['loves'];
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
      // final List lovesList = (documentSnapshot.data()! as dynamic)['loves'];
      final PostsData response = PostsData.fromSnapshot(
          documentSnapshot as DocumentSnapshot<Map<String, dynamic>>);
      return right(response);
    } catch (e) {
      return left(e.toString());
    }
  }
}
