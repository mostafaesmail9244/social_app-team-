import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_states.freezed.dart';
@Freezed()
class LoginStates<T>with _$LoginStates{
  const factory LoginStates.initial()=_Initial;
  const factory LoginStates.loginLoadingState()=LoginLoadingState;
  const factory LoginStates.loginSuccessState(UserCredential user)=LoginSuccessState<T>;
  const factory LoginStates.loginErrorState({required String error})=LoginErrorState;
}