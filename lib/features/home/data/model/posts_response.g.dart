// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostsData _$PostsDataFromJson(Map<String, dynamic> json) => PostsData(
      postId: json['postId'] as String,
      content: json['content'] as String?,
      date: json['date'] as String?,
      image: json['image'] as String?,
      userId: json['userId'] as String?,
      userImage: json['userImage'] as String?,
      userName: json['userName'] as String?,
    );

Map<String, dynamic> _$PostsDataToJson(PostsData instance) => <String, dynamic>{
      'postId': instance.postId,
      'userId': instance.userId,
      'userName': instance.userName,
      'userImage': instance.userImage,
      'image': instance.image,
      'date': instance.date,
      'content': instance.content,
    };
