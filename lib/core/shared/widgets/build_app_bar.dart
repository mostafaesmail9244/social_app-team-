import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../style/text_styles.dart';

buildAppBar(
  BuildContext context, {
  required String title,
  String? leading,
  TextStyle? style,
  void Function()? onPressed,
  bool isIcon = false,
  IconData? icon,
}) {
  return AppBar(
    surfaceTintColor: Colors.white,
    backgroundColor: Colors.white,
    scrolledUnderElevation: 0.0,
    title: Text(
      title,
      style:
          style ?? AppTextStyles.font24SemiBoldBlue.copyWith(fontSize: 20.sp),
    ),
    actions: [
      isIcon
          ? IconButton(
              onPressed: onPressed,
              icon: Icon(icon),
            )
          : TextButton(
              onPressed: onPressed,
              child: Text(
                leading!,
                style:
                    AppTextStyles.font24SemiBoldBlue.copyWith(fontSize: 16.sp),
              ),
            ),
    ],
  );
}
