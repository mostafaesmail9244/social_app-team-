import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/features/login/view/widgets/login_form.dart';
import 'package:social_app/features/login/view_model/login_cubit/login_cubit.dart';
import '../../../../core/widgets/app_button.dart';
import 'dont_have_account.dart';
import 'login_bloc_listener.dart';

class LoginBody extends StatelessWidget {
  final LoginCubit cubit;
  const LoginBody({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'LOGIN',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              verticalSpace(15),
              Text(
                'login now to browse our hot offers',
                style: TextStyle(fontSize: 19, color: Colors.grey[700]),
              ),
              verticalSpace(30),
              const LoginForm(),
              verticalSpace(30),
              AppButton(
                buttonHeight: 30.h,
                buttonText: "Login",
                onPressed: () {
                  context.read<LoginCubit>().emitLoginState();
                },
              ),
              verticalSpace(15),
              const DontHaveAccount(),
              const LoginBlocListener()
            ],
          ),
        ),
      ),
    );
  }
}

// void snackBar(BuildContext context, {required String text}) {
//   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
// }
