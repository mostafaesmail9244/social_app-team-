import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/shared/widgets/custom_shimmer.dart';
import '../../../../core/helper/cash_helper/cash_helper.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../../core/style/app_colors.dart';
import '../../../profile/data/models/profile_response/profile_response.dart';
import '../../view_model/follow_cubit/follow_cubit.dart';

class FollowButtonWidget extends StatelessWidget {
  final UserData data;
  const FollowButtonWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FollowCubit>();
    return BlocBuilder<FollowCubit, FollowState>(
      builder: (context, state) {
        if (state is AddFollowSuccess) {
          return TextButton.icon(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: AppColors.lightMainBlue,
            ),
            onPressed: () {
              cubit.addOrRemoveFollow(data);
            },
            label: Row(
              children: [
                Text(
                  cubit.userData!.followers!
                          .contains(CashHelper.get(key: CashConstants.userId))
                      ? "Unfollow"
                      : "Follow",
                ),
                const SizedBox(width: 5),
                Icon(
                  cubit.userData!.followers!
                          .contains(CashHelper.get(key: CashConstants.userId))
                      ? Icons.remove
                      : Icons.add,
                  size: 20,
                ),
              ],
            ),
          );
        } else {
          return const CustomShimmer(height: 35, width: 70, radius: 25);
        }
      },
    );
  }
}
