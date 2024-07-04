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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'address': address,
      'phone': phone,
      'image': image,
      'coverImage': coverImage,
      'bio': bio,
    };
  }

  factory UserData.fromMap(Map<String, dynamic> map) {
    return UserData(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      address: map['address'] != null ? map['address'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      coverImage: map['coverImage'] != null ? map['coverImage'] as String : null,
      bio: map['bio'] != null ? map['bio'] as String : null,
    );
  }


}
