import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.g.dart';

@JsonSerializable()
class MessageModel {
  final String message;
  final String id;
  final String toId;
  final String fromId;
  final String date;
  final String read;
  final String? image;
  final String type;
  const MessageModel({
    required this.read,
    required this.type,
    required this.id,
    required this.message,
    required this.toId,
    required this.fromId,
    required this.date,
    this.image,
  });

  factory MessageModel.fromSnapshot(
          DocumentSnapshot<Map<String, dynamic>> document) =>
      _$MessageModelFromJson(document.data()!);
  Map<String, dynamic> toJson() => _$MessageModelToJson(this);
}
