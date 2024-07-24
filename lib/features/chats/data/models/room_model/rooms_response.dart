import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../my_profile/data/models/profile_response/profile_response.dart';

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
  final UserData? otherUserDetails;

  final List<String> members;
  const RoomsData({
    required this.id,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.createdAt,
    required this.members,
    this.otherUserDetails,
  });
  factory RoomsData.fromSnapshot(
          DocumentSnapshot<Map<String, dynamic>> document) =>
      _$RoomsDataFromJson(document.data()!);

  Map<String, dynamic> toJson() => _$RoomsDataToJson(this);

  RoomsData copyWith({UserData? memberDetails}) {
    return RoomsData(
      id: id,
      lastMessage: lastMessage,
      lastMessageTime: lastMessageTime,
      createdAt: createdAt,
      members: members,
      otherUserDetails: memberDetails ?? otherUserDetails,
    );
  }
}
