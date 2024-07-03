import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rooms_response.g.dart';

class RoomsResponse {
  final List<RoomsData>? rooms;
  const RoomsResponse({this.rooms});
  factory RoomsResponse.fromJson(List<dynamic> json) {
    return RoomsResponse(
      rooms: json.map((post) => RoomsData.fromSnapshot(post)).toList(),
    );
  }
}

@JsonSerializable()
class RoomsData {
  final String id;
  final String lastMessage;
  final String lastMessageTime;
  final String createdAt;
  final String toUserId;
  final String toUserName;
  final String toUserpicture;
  final List<String> members;
  const RoomsData({
    required this.id,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.createdAt,
    required this.toUserId,
    required this.toUserName,
    required this.toUserpicture,
    required this.members,
  });
  factory RoomsData.fromSnapshot(
          DocumentSnapshot<Map<String, dynamic>> document) =>
      _$RoomsDataFromJson(document.data()!);

  Map<String, dynamic> toJson() => _$RoomsDataToJson(this);
}
