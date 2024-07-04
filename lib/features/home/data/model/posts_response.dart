import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_response.g.dart';

class PostsResponse {
  final List<PostsData>? posts;
  const PostsResponse({this.posts});
  factory PostsResponse.fromJson(List<dynamic> json) {
    return PostsResponse(
      posts: json.map((post) => PostsData.fromSnapshot(post)).toList(),
    );
  }
}

@JsonSerializable()
class PostsData {
  final String? userId;
  final String? userName;
  final String? userImage;
  final String? image;
  final String? date;
  final String? content;

  const PostsData({
    this.content,
    this.date,
    this.image,
    this.userId,
    this.userImage,
    this.userName,
  });
  factory PostsData.fromSnapshot(
          DocumentSnapshot<Map<String, dynamic>> document) =>
      _$PostsDataFromJson(document.data()!);
}
