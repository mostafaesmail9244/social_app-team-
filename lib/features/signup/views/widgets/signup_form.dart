import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/password_and_validation.dart';
import '../../view_model/signup_cubit/signup_cubit.dart';
import 'name_and_email.dart';
import 'phone_and_address.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<SignupCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          NameAndEmail(
            cubit: cubit,
          ),
          PhoneAndAddress(
            cubit: cubit,
          ),
          PasswordAndValidation(controller: cubit.passwordController),
        ],
      ),
    );
  }
}
