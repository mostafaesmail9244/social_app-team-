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
  final String postId;
  final String? userId;
  final String? userName;
  final String? userImage;
  final String? image;
  final String? date;
  final String? content;
  // final int? commentCount;
  final List? loves;

  const PostsData({
    required this.postId,
    this.content,
    this.date,
    this.image,
    this.userId,
    this.userImage,
    this.userName,
    // this.commentCount,
    this.loves,
  });
  factory PostsData.fromSnapshot(
          DocumentSnapshot<Map<String, dynamic>> document) =>
      _$PostsDataFromJson(document.data()!);

  // PostsData copyWith({
  //   final String? postId,
  //   final String? userId,
  //   final String? userName,
  //   final String? userImage,
  //   final String? image,
  //   final String? date,
  //   final String? content,
  //   final int? commentCount,
  //   final List? loves,
  // }) {
  //   return PostsData(
  //     postId: postId ?? this.postId,
  //     userId: userId ?? this.userId,
  //     userName: userName ?? this.userName,
  //     userImage: userImage ?? this.userImage,
  //     image: image ?? this.image,
  //     date: date ?? this.date,
  //     content: content ?? this.content,
  //     commentCount: commentCount ?? this.commentCount,
  //     loves: loves ?? this.loves,
  //   );
  // }
}
