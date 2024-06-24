import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/signup_request/signup_request_body.dart';
import '../../data/repos/signup_repo.dart';
import 'signup_states.dart';

class SignupCubit extends Cubit<SignupStates> {
  final SignupRepo _repo;

  SignupCubit(this._repo) : super(const SignupStates.initial());
  final formKey = GlobalKey<FormState>();
  late final TextEditingController fNameController = TextEditingController();
  late final TextEditingController lNameController = TextEditingController();
  late final TextEditingController emailController = TextEditingController();
  late final TextEditingController phoneController = TextEditingController();
  late final TextEditingController addressController = TextEditingController();
  late final TextEditingController passwordController = TextEditingController();

  void emitToSignupState() async {
    emit(const SignupStates.signupLoading());
    final response = await _repo.postSignup(
        body: SignupRequestBody(
      image:
          'https://firebasestorage.googleapis.com/v0/b/green-grow-2cac7.appspot.com/o/users%2Ficons-user-90.jpg?alt=media&token=05eb62a4-b214-42f9-bbe2-397954e3dc1d',
      firstName: fNameController.text,
      lastName: lNameController.text,
      email: emailController.text,
      phone: phoneController.text,
      address: addressController.text,
      password: passwordController.text,
    ));
    response.fold(
        (error) => emit(SignupStates.signupError(error: error.errorMessage)),
        (userData) => emit(SignupStates.signupSuccess(userData)));
  }

  void validateThenDoLogin() {
    if (formKey.currentState!.validate()) {
      emitToSignupState();
    }
  }
}
