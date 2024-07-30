// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_post_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddPostRequestBody _$AddPostRequestBodyFromJson(Map<String, dynamic> json) =>
    AddPostRequestBody(
      image: json['image'] as String,
      content: json['content'] as String,
      userName: json['userName'] as String,
      userImage: json['userImage'] as String,
      userId: json['userId'] as String,
      date: json['date'] as String,
      postId: json['postId'] as String,
      loves: (json['loves'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AddPostRequestBodyToJson(AddPostRequestBody instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'userImage': instance.userImage,
      'image': instance.image,
      'content': instance.content,
      'date': instance.date,
      'postId': instance.postId,
      'loves': instance.loves,
    };
