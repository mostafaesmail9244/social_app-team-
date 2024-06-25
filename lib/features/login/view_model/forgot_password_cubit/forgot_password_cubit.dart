import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repos/forgot_password_repo.dart';
import 'forgot_password_states.dart';

class ForgotPassCubit extends Cubit<ForgotPasswordStates> {
  final ForgotPasswordRepo _repo;

  ForgotPassCubit(this._repo) : super(const ForgotPasswordStates.initial());
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();

  void emitSendEmail() async {
    emit(const ForgotPasswordStates.forgotPasswordLoading());
    final response =
        await _repo.postForgotPassword(email: emailController.text);
    response.fold(
        (l) => emit(
            ForgotPasswordStates.forgotPasswordError(error: l.errorMessage)),
        (r) => emit(ForgotPasswordStates.forgotPasswordSuccess(r)));
  }

  void validateThenDoPost() {
    if (formKey.currentState!.validate()) {
      emitSendEmail();
    }
  }
}
