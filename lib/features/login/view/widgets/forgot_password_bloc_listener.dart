import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/extentaion.dart';
import '../../../../core/shared/widgets/custom_error.dart';
import '../../../../core/shared/widgets/custom_loading.dart';
import '../../../../core/shared/widgets/custom_success.dart';
import '../../view_model/forgot_password_cubit/forgot_password_cubit.dart';
import '../../view_model/forgot_password_cubit/forgot_password_states.dart';

class ForgotPasswordBlocListener extends StatelessWidget {
  const ForgotPasswordBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgotPassCubit, ForgotPasswordStates>(
      listenWhen: (prv, cur) =>
          cur is ForgotPasswordLoading ||
          cur is ForgotPasswordSuccess ||
          cur is ForgotPasswordError,
      listener: (context, state) {
        state.whenOrNull(forgotPasswordLoading: () {
          customLoading(context);
        }, forgotPasswordSuccess: (success) {
          context.pop();
          customSuccessWidget(context, success, "Go to Login", () {
            context.pop();
            context.pop();
          });
        }, forgotPasswordError: (error) {
          context.pop();
          customErrorWidget(context, error);
        });
      },
      child: const SizedBox.shrink(),
    );
  }
}
