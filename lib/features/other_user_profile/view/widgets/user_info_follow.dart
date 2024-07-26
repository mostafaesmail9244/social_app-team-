import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/style/app_colors.dart';
import 'package:social_app/core/style/text_styles.dart';
import '../../../../core/router/routes.dart';
import '../../../my_profile/data/models/profile_response/profile_response.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'follow_button_widget.dart';

class UserInfoAndFollow extends StatelessWidget {
  final UserData data;
  const UserInfoAndFollow({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                data.name!,
                textAlign: TextAlign.center,
                style: AppTextStyles.font24Black700.copyWith(fontSize: 20.sp),
              ),
              verticalSpace(5),
              Text(
                data.bio!,
                textAlign: TextAlign.center,
                style: AppTextStyles.font14GreyRegular,
              ),
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: const CircleBorder(
                    side: BorderSide(color: AppColors.mainBlue),
                  ),
                  foregroundColor: AppColors.lightMainBlue,
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  context.pushNamed(Routes.testView, arguments: data);
                },
                child: const Icon(Icons.message),
              ),
              FollowButtonWidget(data: data),
            ],
          ),
        ],
      ),
    );
  }
}
