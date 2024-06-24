import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helper/app_regex.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/app_text_filed.dart';
import '../../../../core/widgets/password_and_validation.dart';
import '../../view_model/signup_cubit/signup_cubit.dart';
import 'name_and_email.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<SignupCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          NameAndEmail(cubit: cubit),
          verticalSpace(16),
          AppTextFormFiled(
            hintText: "Phone",
            validator: (val) {
              if (val == null ||
                  val.isEmpty ||
                  !AppRegex.isPhoneNumberValid(val)) {
                return "Please enter a valid phone";
              }
            },
            controller: cubit.phoneController,
            keyboardType: TextInputType.phone,
          ),
          verticalSpace(16),
          PasswordAndValidation(controller: cubit.passwordController),
        ],
      ),
    );
  }
}
