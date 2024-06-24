import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_response.g.dart';

@JsonSerializable()
class UserResponse {
  final String? id;
  final String? name;
  final String? email;
  final String? address;
  final String? phone;
  final String? image;
  final String? coverImage;
  final String? bio;

  const UserResponse({
    this.id,
    this.name,
    this.image,
    this.address,
    this.phone,
    this.email,
    this.coverImage,
    this.bio,
  });

  factory UserResponse.fromSnapshot(
          DocumentSnapshot<Map<String, dynamic>> document) =>
      _$UserResponseFromJson(document.data()!);
}
