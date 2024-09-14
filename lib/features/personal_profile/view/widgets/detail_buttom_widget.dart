import 'package:flutter/material.dart';
import '../../../../core/style/text_styles.dart';

InkWell button({
  required String nums,
  required String title,
  void Function()? onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Column(
      children: [
        Text(
          nums,
          style: AppTextStyles.font18Black,
        ),
        Text(
          title,
          style: AppTextStyles.font14GreyRegular,
        ),
      ],
    ),
  );
}
