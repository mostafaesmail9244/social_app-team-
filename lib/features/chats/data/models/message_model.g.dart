// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) => MessageModel(
      messageId: json['messageId'] as String,
      message: json['message'] as String,
      senderId: json['senderId'] as String,
      receiverId: json['receiverId'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) =>
    <String, dynamic>{
      'messageId': instance.messageId,
      'message': instance.message,
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'date': instance.date,
    };
