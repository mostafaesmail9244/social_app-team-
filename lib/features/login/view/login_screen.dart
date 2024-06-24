import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social_app/features/login/view/widgets/login_body.dart';
import '../../../core/style/app_colors.dart';
import '../view_model/login_cubit/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<LoginCubit>();
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: const Alignment(-1, 0.5),
            child: SvgPicture.asset(
              'assets/svgs/auth_left.svg',
              colorFilter: ColorFilter.mode(
                AppColors.mainBlue.withOpacity(0.2),
                BlendMode.srcIn,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(1, -0.5),
            child: SvgPicture.asset(
              'assets/svgs/auth_right.svg',
              colorFilter: ColorFilter.mode(
                AppColors.mainBlue.withOpacity(0.3),
                BlendMode.srcIn,
              ),
            ),
          ),
          LoginBody(cubit: cubit),
        ],
      ),
    );
  }
}
