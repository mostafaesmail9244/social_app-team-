import 'package:flutter/material.dart';

import '../../style/app_colors.dart';
import '../../style/text_styles.dart';

void customSuccessWidget(
    BuildContext context, String message, String nav, Function() onPresses) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => AlertDialog(
      icon: const Icon(
        Icons.check_circle,
        color: Colors.green,
        size: 32,
      ),
      content: Text(
        message,
        style: const TextStyle(
          fontWeight: FontWeightHelper.regular,
          fontSize: 15,
          color: AppColors.grey66,
        ),
      ),
      actions: [
        TextButton(
          onPressed: onPresses,
          child: Text(
            nav,
            style: const TextStyle(
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
