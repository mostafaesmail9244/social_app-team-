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
      QuerySnapshot<Map<String, dynamic>> snap = await _firestore
          .collection(FireBaseConstants.postsCollection)
          //.orderBy('date', descending: true)
          .where('userId', isEqualTo: uid)
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
