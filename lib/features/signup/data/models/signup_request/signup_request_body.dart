import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String address;
  final String password;
  final String image;
  final String? coverImage;
  final String? bio;

  const SignupRequestBody({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.address,
    required this.password,
    required this.image,
    this.coverImage,
    this.bio,
  });
  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}
