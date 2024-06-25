import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/components.dart';
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

  void emitToSignupState({required File image}) async {
    emit(const SignupStates.signupLoading());
    final response = await _repo.postSignup(
      image: image,
      body: SignupRequestBody(
        firstName: fNameController.text,
        lastName: lNameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
      ),
    );
    response.fold(
        (error) => emit(SignupStates.signupError(error: error.errorMessage)),
        (userData) => emit(SignupStates.signupSuccess(userData)));
  }

  void validateThenDoSignUp({File? image}) {
    if (formKey.currentState!.validate()) {
      if (image == null) {
        flutterToast(text: 'Please Select image', state: ToastEnum.warning);
      } else {
        emitToSignupState(image: image);
      }
    }
  }
}
