import 'package:flutter/material.dart';
import 'package:social_app/core/helper/extentaion.dart';
import '../style/app_colors.dart';
import '../style/text_styles.dart';

void customErrorWidget(BuildContext context, String error) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => AlertDialog(
      icon: const Icon(
        Icons.error,
        color: Colors.red,
        size: 32,
      ),
      content: Text(
        error,
        style: const TextStyle(
          fontWeight: FontWeightHelper.regular,
          fontSize: 15,
          color: AppColors.grey66,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: const Text(
            'Got it',
            style: TextStyle(
              fontWeight: FontWeightHelper.semiBold,
              fontSize: 16,
              color: AppColors.grey24,
            ),
          ),
        ),
      ],
    ),
  );
}
