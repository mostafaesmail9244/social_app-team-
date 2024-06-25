import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/extentaion.dart';
import '../../../../../core/router/routes.dart';
import '../../../../../core/widgets/custom_error.dart';
import '../../../../../core/widgets/custom_loading.dart';
import '../../../../../core/widgets/custom_success.dart';
import '../../../view_model/edit_user_cubit/edit_profile_cubit.dart';
import '../../../view_model/edit_user_cubit/edit_profile_state.dart';

class EditProfileBlocListener extends StatelessWidget {
  const EditProfileBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditUserCubit, EditUserStatus>(
      listenWhen: (previous, current) =>
          current is EditUserLoadingState ||
          current is EditUserSuccessState ||
          current is EditUserErrorState,
      listener: (context, state) {
        if (state is EditUserLoadingState) {
          customLoading(context);
        } else if (state is EditUserSuccessState) {
          context.pop();
          customSuccessWidget(context, state.message, "Go To Home", () {
            context.pushNamedAndRemoveUntil(
              Routes.layoutView,
              predicate: (route) => false,
            );
          });
        } else if (state is EditUserErrorState) {
          customErrorWidget(context, state.error);
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
