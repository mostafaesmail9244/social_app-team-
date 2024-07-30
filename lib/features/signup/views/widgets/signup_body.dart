import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/shared/pick_image_cubit/pick_image_cubit.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/shared/widgets/app_button.dart';
import '../../../../core/shared/widgets/head_auth.dart';
import '../../view_model/signup_cubit/signup_cubit.dart';
import 'already_have_account.dart';
import 'image_of_profile.dart';
import 'signup_bloc_listener.dart';
import 'signup_form.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: [
        verticalSpace(30),
        const HeadAuth(title: "Sign Up", subTitle: "Create an new account"),
        const ImageProfile(),
        verticalSpace(30),
        const SignupForm(),
        verticalSpace(30),
        AppButton(
          buttonText: "Sign Up",
          onPressed: () {
            context.read<SignupCubit>().validateThenDoSignUp(
                image: context.read<PickImageCubit>().selectImage);
          },
        ),
        verticalSpace(20),
        const AlreadyHaveAccount(),
        verticalSpace(70),
        const SignupBlocListener(),
      ],
    );
  }
}
