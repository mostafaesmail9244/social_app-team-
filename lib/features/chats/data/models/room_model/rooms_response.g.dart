// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rooms_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomsData _$RoomsDataFromJson(Map<String, dynamic> json) => RoomsData(
      id: json['id'] as String,
      lastMessage: json['lastMessage'] as String,
      lastMessageTime: json['lastMessageTime'] as String,
      createdAt: json['createdAt'] as String,
      members:
          (json['members'] as List<dynamic>).map((e) => e as String).toList(),
      otherUserDetails: json['otherUserDetails'] == null
          ? null
          : UserData.fromJson(json['otherUserDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RoomsDataToJson(RoomsData instance) => <String, dynamic>{
      'id': instance.id,
      'lastMessage': instance.lastMessage,
      'lastMessageTime': instance.lastMessageTime,
      'createdAt': instance.createdAt,
      'otherUserDetails': instance.otherUserDetails,
      'members': instance.members,
    };
