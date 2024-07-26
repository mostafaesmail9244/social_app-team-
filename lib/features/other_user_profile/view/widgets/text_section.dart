import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/core/shared/widgets/custom_shimmer.dart';
import 'package:social_app/features/other_user_profile/view_model/follow_cubit/follow_cubit.dart';
import '../../../profile/view/widgets/detail_buttom_widget.dart';

class TextSection extends StatelessWidget {
  const TextSection({super.key});

  @override
  Widget build(BuildContext context) {
    final followcubit = context.read<FollowCubit>();
    return BlocBuilder<FollowCubit, FollowState>(
      builder: (context, state) {
        if (state is AddFollowSuccess) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              button(
                nums: followcubit.followers!.toString(),
                title: 'Followers',
              ),
              horizontalSpace(20),
              button(
                nums: followcubit.following!.toString(),
                title: 'Following',
              ),
            ],
          );
        } else {
          return const CustomShimmer(
            height: 50,
            width: double.infinity,
            radius: 5,
          );
        }
      },
    );
  }
}
