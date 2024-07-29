// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) => MessageModel(
      read: json['read'] as String,
      type: json['type'] as String,
      id: json['id'] as String,
      message: json['message'] as String,
      toId: json['toId'] as String,
      fromId: json['fromId'] as String,
      date: json['date'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'id': instance.id,
      'toId': instance.toId,
      'fromId': instance.fromId,
      'date': instance.date,
      'read': instance.read,
      'image': instance.image,
      'type': instance.type,
    };
