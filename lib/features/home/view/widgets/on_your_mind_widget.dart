import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/shared/widgets/custom_shimmer.dart';
import 'package:social_app/features/profile/view_model/get_user_cubit/get_user_cubit.dart';
import 'package:social_app/features/profile/view_model/get_user_cubit/get_user_states.dart';
import 'image_and_mind_widget.dart';

class OnYourMindWidget extends StatelessWidget {
  const OnYourMindWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetUserCubit, GetUserStates>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          getUserLoading: () => const LoadingShimmer(),
          getUserError: (error) => const LoadingShimmer(),
          getUserSuccess: (data) => ImageAndMindWidget(data: data),
        );
      },
    );
  }
}

class LoadingShimmer extends StatelessWidget {
  const LoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          radius: 30,
          child: CustomShimmer(
            height: 100,
            width: 100,
            radius: 320,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: CustomShimmer(
            height: 40,
            width: double.infinity,
            radius: 15,
          ),
        ),
      ],
    );
  }
}
