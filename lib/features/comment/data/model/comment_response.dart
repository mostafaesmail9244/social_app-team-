import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_response.g.dart';

class CommentsResponse {
  final List<CommentData>? comments;
  const CommentsResponse({this.comments});
  factory CommentsResponse.fromJson(List<dynamic> json) {
    return CommentsResponse(
      comments: json.map((post) => CommentData.fromSnapshot(post)).toList(),
    );
  }
}

@JsonSerializable()
class CommentData {
  final String commentId;
  final String postId;
  final String uid;
  final String tittle;
  final String profilePic;
  final String username;
  final String date;

  const CommentData({
    required this.commentId,
    required this.postId,
    required this.uid,
    required this.tittle,
    required this.profilePic,
    required this.username,
    required this.date,
  });

  Map<String, dynamic> toJson() => _$CommentDataToJson(this);

  factory CommentData.fromSnapshot(
          DocumentSnapshot<Map<String, dynamic>> document) =>
      _$CommentDataFromJson(document.data()!);
}
