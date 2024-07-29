import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper_constants.dart';
import 'package:social_app/core/shared/widgets/custom_cached_image.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/style/text_styles.dart';

class ImageAndName extends StatelessWidget {
  const ImageAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            child: CustomCachedNetworkImage(
              imageUrl: CashHelper.get(key: CashConstants.userImage),
              size: 20,
              height: 100,
              width: 100,
              radius: 320,
            ),
          ),
          horizontalSpace(10),
          Text(
            CashHelper.get(key: CashConstants.userName),
            style: AppTextStyles.font15DarkBlueMedium.copyWith(fontSize: 17.sp),
          ),
        ],
      ),
    );
  }
}
