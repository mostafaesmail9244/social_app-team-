import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/core/style/text_styles.dart';
import '../../../../core/helper/cash_helper/cash_helper.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../view_model/get_user_cubit/get_user_cubit.dart';
import '../../view_model/get_user_cubit/get_user_states.dart';
import 'detail_buttom_widget.dart';

class ProfileTextSection extends StatelessWidget {
  const ProfileTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          CashHelper.get(key: CashConstants.userName),
          textAlign: TextAlign.center,
          style: AppTextStyles.font24Black700,
        ),
        verticalSpace(10),
        Text(
          CashHelper.get(key: CashConstants.bio),
          textAlign: TextAlign.center,
          style: AppTextStyles.font14GreyRegular,
        ),
        verticalSpace(30),
        BlocBuilder<GetUserCubit, GetUserStates>(
          builder: (context, state) {
            return state.maybeWhen(
              getUserSuccess: (data) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  button(
                    nums: data.followers!.length.toString(),
                    title: 'Followers',
                  ),
                  horizontalSpace(30),
                  button(
                    nums: data.following!.length.toString(),
                    title: 'Following',
                  ),
                ],
              ),
              orElse: () => const SizedBox(),
            );
          },
        ),
      ],
    );
  }
}
