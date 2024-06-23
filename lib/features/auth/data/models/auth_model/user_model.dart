class UserModel {
  String? id;
  String? name;
  String? bio;
  String? profileImage;
  String? coverImage;
  String? email;
  String? phone;
  UserModel({
     this.id,
     this.name,
     this.bio,
     this.email,
     this.phone,
     this.profileImage,
    this.coverImage,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'bio': bio,
      'email': email,
      'profileImage': profileImage,
      'coverImage': coverImage,
      'phone': phone,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      bio: json['bio'],
      profileImage: json['profileImage'],
      coverImage: json['coverImage'],
      email: json['email'],
      phone: json['phone'],
    );
  }
}
