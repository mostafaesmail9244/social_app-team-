import 'package:flutter/material.dart';
import '../helper/spacing.dart';
import '../style/app_colors.dart';
import '../style/text_styles.dart';

class HeadAuth extends StatelessWidget {
  final String title;
  final String subTitle;
  const HeadAuth({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(100),
        Text(
          title,
          style: AppTextStyles.font24SemiBoldBlue,
        ),
        verticalSpace(10),
        Text(
          subTitle,
          style: AppTextStyles.font14RegularBlack
              .copyWith(color: AppColors.grey66),
        ),
        verticalSpace(50),
      ],
    );
  }
}
