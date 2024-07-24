import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/widgets/custom_shimmer.dart';
import 'package:social_app/features/my_profile/view_model/get_user_cubit/get_user_cubit.dart';
import 'package:social_app/features/my_profile/view_model/get_user_cubit/get_user_states.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/style/app_colors.dart';
import '../../../../core/style/text_styles.dart';
import '../../../../core/widgets/custom_cached_image.dart';
import '../../../layout/view_model/layout_cubit/layout_cubit.dart';

class OnYourMindWidget extends StatelessWidget {
  const OnYourMindWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetUserCubit, GetUserStates>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          getUserLoading: () => const CustomShimmer(
              height: 50, width: double.infinity, radius: 12),
          getUserError: (error) => const CustomShimmer(
              height: 50, width: double.infinity, radius: 12),
          getUserSuccess: (data) => Row(
            children: [
              GestureDetector(
                onTap: () {
                  context.read<LayoutCubit>().changeIndexOfNavBar(4);
                },
                child: CircleAvatar(
                  radius: 27,
                  child: CustomCachedNetworkImage(
                    imageUrl: data.image ?? "",
                    height: 50,
                    width: 50,
                    size: 20,
                    radius: 320,
                  ),
                ),
              ),
              horizontalSpace(10),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    context.read<LayoutCubit>().changeIndexOfNavBar(2);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    alignment: Alignment.centerLeft,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.greyED),
                    child: BlocBuilder<GetUserCubit, GetUserStates>(
                      builder: (context, state) {
                        return Text(
                          "What's on your mind?",
                          style: AppTextStyles.font14GreyRegular,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
