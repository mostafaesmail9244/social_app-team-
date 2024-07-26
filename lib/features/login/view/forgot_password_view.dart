import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import '../../../core/helper/app_regex.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/shared/widgets/app_button.dart';
import '../../../core/shared/widgets/app_text_filed.dart';
import '../../../core/shared/widgets/head_auth.dart';
import '../view_model/forgot_password_cubit/forgot_password_cubit.dart';
import 'widgets/forgot_password_bloc_listener.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<ForgotPassCubit>();
    return Scaffold(
      body: Form(
        key: cubit.formKey,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          children: [
            const HeadAuth(
              title: "Forgot password",
              subTitle:
                  "At our app, we take the security of your information seriously.",
            ),
            LottieBuilder.asset(
              'assets/lottie/pass.json',
              height: 250.h,
            ),
            verticalSpace(10),
            AppTextFormFiled(
              controller: cubit.emailController,
              hintText: "Email",
              validator: (val) {
                if (val == null || val.isEmpty || !AppRegex.isEmailValid(val)) {
                  return "Please enter a valid email";
                }
              },
              keyboardType: TextInputType.emailAddress,
            ),
            verticalSpace(20),
            AppButton(
              buttonText: "Reset Password",
              onPressed: () {
                cubit.validateThenDoPost();
              },
            ),
            const ForgotPasswordBlocListener(),
          ],
        ),
      ),
    );
  }
}
