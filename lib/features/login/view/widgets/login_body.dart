import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/features/login/view/widgets/login_form.dart';
import 'package:social_app/features/login/view_model/login_cubit/login_cubit.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/style/text_styles.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/head_auth.dart';
import 'dont_have_account.dart';
import 'login_bloc_listener.dart';

class LoginBody extends StatelessWidget {
  final LoginCubit cubit;
  const LoginBody({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(30),
            const HeadAuth(
              title: "LOGIN",
              subTitle: "login now to browse our hot offers",
            ),
            verticalSpace(20),
            const LoginForm(),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  context.pushNamed(Routes.forgotPasswordView);
                },
                child: Text(
                  "Forgot Password?",
                  style: AppTextStyles.font14SemiBoldBlue,
                ),
              ),
            ),
            verticalSpace(30),
            AppButton(
              buttonHeight: 30.h,
              buttonText: "Login",
              onPressed: () {
                context.read<LoginCubit>().validateThenDoLogin();
              },
            ),
            verticalSpace(15),
            const DontHaveAccount(),
            const LoginBlocListener()
          ],
        ),
      ),
    );
  }
}
