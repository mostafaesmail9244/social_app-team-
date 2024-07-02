import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.g.dart';

@JsonSerializable()
class MessageModel {
  final String messageId;
  final String message;
  final String senderId;
  final String receiverId;
  final String date;
  MessageModel({
    required this.messageId,
    required this.message,
    required this.senderId,
    required this.receiverId,
    required this.date,
  });

  factory MessageModel.fromSnapshot(
          DocumentSnapshot<Map<String, dynamic>> document) =>
      _$MessageModelFromJson(document.data()!);
  Map<String, dynamic> toJson() => _$MessageModelToJson(this);
}
