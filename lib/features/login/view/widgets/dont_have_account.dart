import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:social_app/core/helper/extentaion.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/style/text_styles.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "Dont't have an account?  ",
              style: AppTextStyles.font13RegularGrey66),
          TextSpan(
              text: "Sign Up",
              style: AppTextStyles.font14SemiBoldBlue,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushNamed(Routes.registerScreen);
                }),
        ]),
        textAlign: TextAlign.center,
      ),
    );
  }
}
