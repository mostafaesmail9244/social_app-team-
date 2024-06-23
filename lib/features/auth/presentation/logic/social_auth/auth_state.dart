// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_cubit.dart';

abstract class AuthState {}

class SocialLoginInitialState extends AuthState {}

class SocialLoginSuccessState extends AuthState {
  SocialLoginSuccessState();
}

class SocialLoginLoadingState extends AuthState {}

class SocialLoginErrorState extends AuthState {
  final String error;

  SocialLoginErrorState({required this.error});
}

class SocialRegisterSuccessState extends AuthState {
  final UserModel userModel;

  SocialRegisterSuccessState({required this.userModel});
}

class SocialRegisterLoadingState extends AuthState {}

class SocialRegisterErrorState extends AuthState {
  final String error;

  SocialRegisterErrorState({required this.error});
}

class SocialChangePasswordVisibility extends AuthState {}

class CreateUserErrorState extends AuthState {
  final String error;

  CreateUserErrorState({required this.error});
}

class CrateUserSuccessState extends AuthState {}

class ImagePicked extends AuthState {}

class ImageNotPicked extends AuthState {}

class UploadImageSuccess extends AuthState {}

class UploadImageFailed extends AuthState {
  final String error;
  UploadImageFailed({
    required this.error,
  });
}
