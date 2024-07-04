import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/core/style/app_colors.dart';

class AppTextStyles {
  static TextStyle font24Black700 = TextStyle(
      color: Colors.black, fontSize: 24.sp, fontWeight: FontWeight.w700);
  static TextStyle font32Blue700 = const TextStyle(
      color: AppColors.mainBlue, fontSize: 32, fontWeight: FontWeight.w700);
  static TextStyle font16Grey = const TextStyle(
    color: AppColors.grey,
    fontSize: 16,
  );
  static TextStyle font18Black = const TextStyle(
    color: Colors.black,
    fontSize: 18,
  );
  static TextStyle font24BlueBold = const TextStyle(
      color: AppColors.mainBlue,
      fontSize: 24,
      fontWeight: FontWeightHelper.bold);
  static TextStyle font32Blue = const TextStyle(
      color: AppColors.mainBlue, fontSize: 32, fontWeight: FontWeight.w700);
  static TextStyle font13GrayRegular = const TextStyle(
    color: AppColors.grey,
    fontWeight: FontWeightHelper.regular,
    fontSize: 13,
  );
  static TextStyle font13DarkBlueRegular = const TextStyle(
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.regular,
    fontSize: 13,
  );
  static TextStyle font13BlueSemiBold = const TextStyle(
    color: AppColors.mainBlue,
    fontWeight: FontWeightHelper.semiBold,
    fontSize: 13,
  );
  static TextStyle font13DarkBlueMedium = const TextStyle(
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.medium,
    fontSize: 13,
  );
  static TextStyle font14GreyRegular = const TextStyle(
    color: AppColors.grey,
    fontWeight: FontWeightHelper.regular,
    fontSize: 14,
  );
  static TextStyle font14LightGreyRegular = const TextStyle(
    color: AppColors.lightGrey,
    fontWeight: FontWeightHelper.regular,
    fontSize: 14,
  );
  static TextStyle font14DarkBlueMedium = const TextStyle(
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.medium,
    fontSize: 14,
  );
  static TextStyle font16WhiteSemiBold = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeightHelper.semiBold,
    fontSize: 16,
  );
  static TextStyle font15DarkBlueMedium = const TextStyle(
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.medium,
    fontSize: 15,
  );
  static TextStyle font14BlueSemiBold = const TextStyle(
    color: AppColors.mainBlue,
    fontWeight: FontWeightHelper.semiBold,
    fontSize: 14,
  );

  ////samir magdy
  static TextStyle font24SemiBoldBlue = TextStyle(
    fontWeight: FontWeightHelper.semiBold,
    fontSize: 24.sp,
    color: AppColors.mainBlue,
  );

  static TextStyle font14SemiBoldBlue = TextStyle(
    fontWeight: FontWeightHelper.semiBold,
    fontSize: 14.sp,
    color: AppColors.mainBlue,
  );

  static TextStyle font13RegularGrey66 = TextStyle(
    fontWeight: FontWeightHelper.regular,
    fontSize: 13.sp,
    color: AppColors.grey66,
  );

  static TextStyle font14RegularBlack = TextStyle(
    fontWeight: FontWeightHelper.regular,
    fontSize: 14.sp,
    color: AppColors.darkBlue,
  );
  static TextStyle font15MediumBlack12 = TextStyle(
    fontWeight: FontWeightHelper.medium,
    fontSize: 15.sp,
    color: AppColors.black12,
  );
}

class FontWeightHelper {
  static const FontWeight thin = FontWeight.w100;
  static const FontWeight extraLight = FontWeight.w200;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
}
