// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) => MessageModel(
      read: json['read'] as String,
      type: json['type'] as String,
      messageId: json['messageId'] as String,
      message: json['message'] as String,
      toId: json['toId'] as String,
      fromId: json['fromId'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'messageId': instance.messageId,
      'toId': instance.toId,
      'fromId': instance.fromId,
      'date': instance.date,
      'read': instance.read,
      'type': instance.type,
    };
