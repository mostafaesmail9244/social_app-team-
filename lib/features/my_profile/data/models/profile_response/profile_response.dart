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
  final List? followers;
  final List? following;

  const UserData({
    this.id,
    this.name,
    this.image,
    this.address,
    this.phone,
    this.email,
    this.coverImage,
    this.bio,
    this.followers,
    this.following,
  });

  factory UserData.fromSnapshot(
          DocumentSnapshot<Map<String, dynamic>> document) =>
      _$UserDataFromJson(document.data()!);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'address': address,
      'phone': phone,
      'image': image,
      'coverImage': coverImage,
      'bio': bio,
      'followers': followers,
      'following': following,
    };
  }

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      id: json['id'] != null ? json['id'] as String : null,
      name: json['name'] != null ? json['name'] as String : null,
      email: json['email'] != null ? json['email'] as String : null,
      address: json['address'] != null ? json['address'] as String : null,
      phone: json['phone'] != null ? json['phone'] as String : null,
      image: json['image'] != null ? json['image'] as String : null,
      coverImage:
          json['coverImage'] != null ? json['coverImage'] as String : null,
      bio: json['bio'] != null ? json['bio'] as String : null,
      followers: json['followers'] as List<dynamic>?,
      following: json['following'] as List<dynamic>?,
    );
  }
}
