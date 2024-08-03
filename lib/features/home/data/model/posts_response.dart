import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:social_app/hive_helper/fields/posts_data_fields.dart';
import 'package:social_app/hive_helper/fields/posts_response_fields.dart';
import 'package:social_app/hive_helper/hive_adapters.dart';
import 'package:social_app/hive_helper/hive_types.dart';

part 'posts_response.g.dart';

@JsonSerializable()
@HiveType(
    typeId: HiveTypes.postsResponse, adapterName: HiveAdapters.postsResponse)
class PostsResponse extends HiveObject {
  @HiveField(PostsResponseFields.posts)
  final List<PostsData>? posts;
  PostsResponse({this.posts});
  factory PostsResponse.fromJson(List<dynamic> json) => PostsResponse(
        posts: json.map((post) => PostsData.fromSnapshot(post)).toList(),
      );
}

@JsonSerializable()
@HiveType(typeId: HiveTypes.postsData, adapterName: HiveAdapters.postsData)
class PostsData extends HiveObject {
  @HiveField(PostsDataFields.postId)
  final String postId;
  @HiveField(PostsDataFields.userId)
  final String? userId;
  @HiveField(PostsDataFields.userName)
  final String? userName;
  @HiveField(PostsDataFields.userImage)
  final String? userImage;
  @HiveField(PostsDataFields.image)
  final String? image;
  @HiveField(PostsDataFields.date)
  final String? date;
  @HiveField(PostsDataFields.content)
  final String? content;
  @HiveField(PostsDataFields.loves)
  final List<String>? loves;

  PostsData({
    required this.postId,
    this.content,
    this.date,
    this.image,
    this.userId,
    this.userImage,
    this.userName,
    this.loves,
  });
  factory PostsData.fromSnapshot(
          DocumentSnapshot<Map<String, dynamic>> document) =>
      _$PostsDataFromJson(document.data()!);
}
