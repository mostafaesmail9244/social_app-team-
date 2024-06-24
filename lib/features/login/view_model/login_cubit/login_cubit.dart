import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/login_request/login_request_body.dart';
import '../../data/repos/login_repo.dart';
import 'login_states.dart';

class LoginCubit extends Cubit<LoginStates> {
  final LoginRepo _repo;

  LoginCubit(this._repo) : super(const LoginStates.initial());
  final formKey = GlobalKey<FormState>();
  late final TextEditingController emailController = TextEditingController();
  late final TextEditingController passwordController = TextEditingController();

  void emitLoginState() async {
    emit(const LoginStates.loginLoadingState());
    final response = await _repo.postLogin(
        body: LoginRequestBody(
            email: emailController.text, password: passwordController.text));
    response.fold(
        (failure) =>
            emit(LoginStates.loginErrorState(error: failure.errorMessage)),
        (userData) => emit(LoginStates.loginSuccessState(userData)));
  }

  void validateThenDoLogin() {
    if (formKey.currentState!.validate()) {
      emitLoginState();
    }
  }
}
