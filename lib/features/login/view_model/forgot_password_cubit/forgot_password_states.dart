import 'package:freezed_annotation/freezed_annotation.dart';
part 'forgot_password_states.freezed.dart';
@Freezed()
class ForgotPasswordStates<T>with _$ForgotPasswordStates{
  const factory ForgotPasswordStates.initial()=_Initial;
  const factory ForgotPasswordStates.forgotPasswordLoading()=ForgotPasswordLoading;
  const factory ForgotPasswordStates.forgotPasswordSuccess(String data)=ForgotPasswordSuccess<T>;
  const factory ForgotPasswordStates.forgotPasswordError({required String error})=ForgotPasswordError;
}