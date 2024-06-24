import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:social_app/core/helper/extentaion.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/style/text_styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: "Already have an account yet?  ",
            style: AppTextStyles.font13RegularGrey66),
        TextSpan(
            text: "Login",
            style: AppTextStyles.font14SemiBoldBlue,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacmentNamed(Routes.loginScreen);
              }),
      ]),
      textAlign: TextAlign.center,
    );
  }
}
