import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/features/login/view/widgets/login_body.dart';
import '../view_model/login_cubit/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  //bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<LoginCubit>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: LoginBody(cubit: cubit),
    );
  }
}
