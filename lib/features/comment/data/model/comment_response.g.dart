// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentData _$CommentDataFromJson(Map<String, dynamic> json) => CommentData(
      commentId: json['commentId'] as String,
      postId: json['postId'] as String,
      uid: json['uid'] as String,
      tittle: json['tittle'] as String,
      profilePic: json['profilePic'] as String,
      username: json['username'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$CommentDataToJson(CommentData instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'postId': instance.postId,
      'uid': instance.uid,
      'tittle': instance.tittle,
      'profilePic': instance.profilePic,
      'username': instance.username,
      'date': instance.date,
    };
