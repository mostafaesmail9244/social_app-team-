import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper.dart';
import 'package:uuid/uuid.dart';
import '../../../../core/firebase_service/firebase_constants.dart';
import '../../../../core/firebase_service/firebase_failures.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../model/comment_response.dart';

class CommentRepo {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<Either<Failure, CommentsResponse>> getComments(String postId) async {
    try {
      final QuerySnapshot<Map<String, dynamic>> snap = await _firestore
          .collection(FireBaseConstants.postsCollection)
          .doc(postId)
          .collection(FireBaseConstants.commentsCollection)
          .orderBy('date', descending: false)
          .get();

      CommentsResponse response = CommentsResponse.fromJson(snap.docs);
      return right(response);
    } catch (e) {
      if (e is FirebaseException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  Future<Either<Failure, String>> addComments({
    required String postId,
    required String tittle,
  }) async {
    final String commentId = const Uuid().v1();
    try {
      CommentData messageModel = CommentData(
        commentId: commentId,
        postId: postId,
        tittle: tittle,
        uid: CashHelper.get(key: CashConstants.userId),
        profilePic: CashHelper.get(key: CashConstants.userImage),
        username: CashHelper.get(key: CashConstants.userName),
        date: DateTime.now().millisecondsSinceEpoch.toString(),
      );
      await _firestore
          .collection(FireBaseConstants.postsCollection)
          .doc(postId)
          .collection(FireBaseConstants.commentsCollection)
          .doc(commentId)
          .set(messageModel.toJson());
      return right('success');
    } catch (e) {
      if (e is FirebaseException) {
        return left(ServerFailure.fromFirebaseAuthException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
