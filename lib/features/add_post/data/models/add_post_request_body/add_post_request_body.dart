import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_post_request_body.g.dart';

@JsonSerializable()
class AddPostRequestBody {
  final String userId;
  final String userName;
  final String userImage;
  final String image;
  final String content;
  final String date;
  final String postId;
  final List<String> loves;

  const AddPostRequestBody({
    required this.image,
    required this.content,
    required this.userName,
    required this.userImage,
    required this.userId,
    required this.date,
    required this.postId,
    required this.loves,
  });
  Map<String, dynamic> toJson() => _$AddPostRequestBodyToJson(this);
}
