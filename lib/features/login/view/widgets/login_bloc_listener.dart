import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/extentaion.dart';
import '../../../../core/widgets/components.dart';
import '../../../../core/widgets/custom_loading.dart';
import '../../../../core/helper/cash_helper/cash_helper.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../../core/router/routes.dart';
import '../../view_model/login_cubit/login_cubit.dart';
import '../../view_model/login_cubit/login_states.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginStates>(
      listenWhen: (prv, cur) =>
          cur is LoginLoadingState ||
          cur is LoginErrorState ||
          cur is LoginSuccessState,
      listener: (context, state) {
        state.whenOrNull(loginLoadingState: () {
          customLoading(context);
        }, loginSuccessState: (userData) {
          context.pop();
          CashHelper.put(key: CashConstants.userId, value: userData.user!.uid);
          CashHelper.put(key: CashConstants.email, value: userData.user!.email);
          context.pushNamedAndRemoveUntil(Routes.layoutScreen,
              predicate: (route) => false);
        }, loginErrorState: (error) {
          context.pop();
          flutterToast(text: error, state: ToastEnum.error);
        });
      },
      child: const SizedBox.shrink(),
    );
  }
}
