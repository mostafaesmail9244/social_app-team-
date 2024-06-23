class PostModel {
  String? uId;
  String? name;
  String? profileImage;
  String? date;
  String? image;
  String? post;

  PostModel({
    this.uId,
    this.name,
    this.profileImage,
    this.date,
    this.image,
    this.post,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uId': uId,
      'name': name,
      'profileImage': profileImage,
      'date': date,
      'image': image,
      'post': post,
    };
  }

  factory PostModel.fromJson(Map<String, dynamic> map) {
    return PostModel(
      uId: map['uId'] != null ? map['uId'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      profileImage:
          map['profileImage'] != null ? map['profileImage'] as String : null,
      date: map['date'] != null ? map['date'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      post: map['post'] != null ? map['post'] as String : null,
    );
  }
}
