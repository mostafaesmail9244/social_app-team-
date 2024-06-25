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
    );

Map<String, dynamic> _$AddPostRequestBodyToJson(AddPostRequestBody instance) =>
    <String, dynamic>{
      'image': instance.image,
      'content': instance.content,
      'userName': instance.userName,
      'userImage': instance.userImage,
      'userId': instance.userId,
      'date': instance.date,
    };
