// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PostsResponseAdapter extends TypeAdapter<PostsResponse> {
  @override
  final int typeId = 0;

  @override
  PostsResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PostsResponse(
      posts: (fields[0] as List?)?.cast<PostsData>(),
    );
  }

  @override
  void write(BinaryWriter writer, PostsResponse obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.posts);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostsResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PostsDataAdapter extends TypeAdapter<PostsData> {
  @override
  final int typeId = 1;

  @override
  PostsData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PostsData(
      postId: fields[0] as String,
      content: fields[6] as String?,
      date: fields[5] as String?,
      image: fields[4] as String?,
      userId: fields[1] as String?,
      userImage: fields[3] as String?,
      userName: fields[2] as String?,
      loves: (fields[8] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, PostsData obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.postId)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.userName)
      ..writeByte(3)
      ..write(obj.userImage)
      ..writeByte(4)
      ..write(obj.image)
      ..writeByte(5)
      ..write(obj.date)
      ..writeByte(6)
      ..write(obj.content)
      ..writeByte(8)
      ..write(obj.loves);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostsDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostsResponse _$PostsResponseFromJson(Map<String, dynamic> json) =>
    PostsResponse(
      posts: (json['posts'] as List<dynamic>?)
          ?.map((e) => PostsData.fromSnapshot(e))
          .toList(),
    );

Map<String, dynamic> _$PostsResponseToJson(PostsResponse instance) =>
    <String, dynamic>{
      'posts': instance.posts,
    };

PostsData _$PostsDataFromJson(Map<String, dynamic> json) => PostsData(
      postId: json['postId'] as String,
      content: json['content'] as String?,
      date: json['date'] as String?,
      image: json['image'] as String?,
      userId: json['userId'] as String?,
      userImage: json['userImage'] as String?,
      userName: json['userName'] as String?,
      loves:
          (json['loves'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$PostsDataToJson(PostsData instance) => <String, dynamic>{
      'postId': instance.postId,
      'userId': instance.userId,
      'userName': instance.userName,
      'userImage': instance.userImage,
      'image': instance.image,
      'date': instance.date,
      'content': instance.content,
      'loves': instance.loves,
    };
