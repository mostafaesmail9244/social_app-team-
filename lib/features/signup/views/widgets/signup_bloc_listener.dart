import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/extentaion.dart';
import '../../../../core/helper/cash_helper/cash_helper.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/widgets/components.dart';
import '../../../../core/widgets/custom_loading.dart';
import '../../view_model/signup_cubit/signup_cubit.dart';
import '../../view_model/signup_cubit/signup_states.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupStates>(
      listenWhen: (prv, cur) =>
          cur is SignupLoading || cur is SignupSuccess || cur is SignupError,
      listener: (context, state) {
        state.whenOrNull(signupLoading: () {
          customLoading(context);
        }, signupSuccess: (userData) {
          context.pop();
          CashHelper.put(key: CashConstants.userId, value: userData.user!.uid);
          CashHelper.put(key: CashConstants.email, value: userData.user!.email);
          context.pushNamedAndRemoveUntil(Routes.layoutScreen,
              predicate: (route) => false);
        }, signupError: (error) {
          context.pop();
          flutterToast(text: error, state: ToastEnum.error);
        });
      },
      child: const SizedBox.shrink(),
    );
  }
}
