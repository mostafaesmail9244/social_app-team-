import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/style/app_colors.dart';
import 'package:social_app/core/style/text_styles.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../../core/router/routes.dart';
import '../../../personal_profile/data/models/profile_response/profile_response.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'follow_button_widget.dart';

class UserInfoAndFollow extends StatelessWidget {
  final UserData data;
  const UserInfoAndFollow({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            data.name!,
            textAlign: TextAlign.center,
            style: AppTextStyles.font24Black700.copyWith(fontSize: 20.sp),
          ),
          verticalSpace(3),
          Text(
            data.bio!,
            textAlign: TextAlign.center,
            style: AppTextStyles.font14GreyRegular,
          ),
          verticalSpace(15),
          data.id == CashHelper.get(key: CashConstants.userId)
              ? const SizedBox()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                        context.pushNamed(Routes.beforeGoingToChatView,
                            arguments: data);
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
