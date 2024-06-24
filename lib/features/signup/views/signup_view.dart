import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/style/app_colors.dart';
import 'widgets/signup_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: const Alignment(-1, 0.5),
            child: SvgPicture.asset(
              'assets/svgs/auth_left.svg',
              colorFilter: ColorFilter.mode(
                AppColors.mainBlue.withOpacity(0.1),
                BlendMode.srcIn,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(1, -0.5),
            child: SvgPicture.asset(
              'assets/svgs/auth_right.svg',
              colorFilter: ColorFilter.mode(
                AppColors.mainBlue.withOpacity(0.2),
                BlendMode.srcIn,
              ),
            ),
          ),
          const SignupViewBody(),
        ],
      ),
    );
  }
}
