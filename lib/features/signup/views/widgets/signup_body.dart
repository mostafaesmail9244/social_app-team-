import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/head_auth.dart';
import '../../view_model/signup_cubit/signup_cubit.dart';
import 'already_have_account.dart';
import 'signup_bloc_listener.dart';
import 'signup_form.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      children: [
        const HeadAuth(
          title: "Sign Up",
          subTitle: "Create an new account",
        ),
        const SignupForm(),
        verticalSpace(30),
        AppButton(
            buttonText: "Sign Up",
            onPressed: () {
              context.read<SignupCubit>().validateThenDoLogin();
            }),
        verticalSpace(20),
        const AlreadyHaveAccount(),
        verticalSpace(70),
        const SignupBlocListener(),
      ],
    );
  }
}
