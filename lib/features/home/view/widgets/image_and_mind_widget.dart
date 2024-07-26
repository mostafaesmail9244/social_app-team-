import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/shared/widgets/custom_cached_image.dart';
import '../../../../core/style/app_colors.dart';
import '../../../../core/style/text_styles.dart';
import '../../../layout/view_model/layout_cubit/layout_cubit.dart';
import '../../../profile/data/models/profile_response/profile_response.dart';

class ImageAndMindWidget extends StatelessWidget {
  final UserData data;
  const ImageAndMindWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Row(
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
                color: AppColors.greyED,
              ),
              child: Text(
                "What's on your mind?",
                style: AppTextStyles.font14GreyRegular,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
