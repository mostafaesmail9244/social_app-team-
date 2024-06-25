import 'package:flutter/material.dart';
import 'package:social_app/core/widgets/app_button.dart';
import '../../../../core/helper/cash_helper/cash_helper.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/widgets/components.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      buttonText: 'Log out',
      onPressed: () {
        showWarningDialog(
          context: context,
          onTap: () {
            FirebaseAuth.instance.signOut();
            context.pushNamedAndRemoveUntil(
              Routes.loginView,
              predicate: (route) => false,
            );
            CashHelper.removeData(key: CashConstants.userId);
          },
          textTap: 'Logout',
          textTapColor: Colors.red,
          title: "Logout",
          subTitle:
              "You'll need to enter your\nusername and password next\ntime you want to login",
        );
      },
      buttonHeight: 35,
      borderRadius: 6,
    );
  }
}
