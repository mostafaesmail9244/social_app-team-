import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_response.g.dart';

class UsersResponse {
  final List<UserData>? users;
  const UsersResponse({this.users});
  factory UsersResponse.fromJson(List<dynamic> json) {
    return UsersResponse(
      users: json.map((post) => UserData.fromSnapshot(post)).toList(),
    );
  }
}

@JsonSerializable()
class UserData {
  final String? id;
  final String? name;
  final String? email;
  final String? address;
  final String? phone;
  final String? image;
  final String? coverImage;
  final String? bio;

  const UserData({
    this.id,
    this.name,
    this.image,
    this.address,
    this.phone,
    this.email,
    this.coverImage,
    this.bio,
  });

  factory UserData.fromSnapshot(
          DocumentSnapshot<Map<String, dynamic>> document) =>
      _$UserDataFromJson(document.data()!);
}
