import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.g.dart';

@JsonSerializable()
class MessageModel {
  final String message;
  final String senderId;
  final String receiverId;
  final DateTime createdAt;
  MessageModel({
    required this.message,
    required this.senderId,
    required this.receiverId,
    required this.createdAt,
  });

  factory MessageModel.fromSnapshot(
          DocumentSnapshot<Map<String, dynamic>> document) =>
      _$MessageModelFromJson(document.data()!);
  Map<String, dynamic> toJson() => _$MessageModelToJson(this);
}
