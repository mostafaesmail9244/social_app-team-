import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helper/app_regex.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/app_text_filed.dart';
import '../../../../core/widgets/password_and_validation.dart';
import '../../view_model/login_cubit/login_cubit.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<LoginCubit>();

    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          AppTextFormFiled(
            prefixIcon: const Icon(Icons.email_outlined),
            controller: cubit.emailController,
            validator: (val) {
              if (val == null || val.isEmpty || !AppRegex.isEmailValid(val)) {
                return "Please enter a valid email";
              }
            },
            keyboardType: TextInputType.emailAddress,
            hintText: 'Email',
          ),
          verticalSpace(16),
          PasswordAndValidation(controller: cubit.passwordController),
          verticalSpace(10),
        ],
      ),
    );
  }
}
