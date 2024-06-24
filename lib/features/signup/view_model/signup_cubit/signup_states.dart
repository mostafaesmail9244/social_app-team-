import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_states.freezed.dart';
@Freezed()
class SignupStates<T>with _$SignupStates{
  const factory SignupStates.initial()=_Initial;
  const factory SignupStates.signupLoading()=SignupLoading;
  const factory SignupStates.signupSuccess(UserCredential data)=SignupSuccess<T>;
  const factory SignupStates.signupError({required String error})=SignupError;
}