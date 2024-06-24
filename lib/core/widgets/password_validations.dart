import 'package:flutter/material.dart';
import '../helper/spacing.dart';
import '../style/app_colors.dart';
import '../style/text_styles.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow("At least 1 lowercase later", hasLowerCase),
        verticalSpace(2),
        buildValidationRow("At least 1 uppercase later", hasUpperCase),
        verticalSpace(2),
        buildValidationRow(
            "At least 1 special character", hasSpecialCharacters),
        verticalSpace(2),
        buildValidationRow("At least 1 number", hasNumber),
        verticalSpace(2),
        buildValidationRow("At least 8 characters long", hasMinLength),
      ],
    );
  }

  buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: AppColors.grey75,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: AppTextStyles.font13RegularGrey66.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: AppColors.mainBlue,
            decorationThickness: 2,
            color: hasValidated ? AppColors.grey75 : AppColors.grey24,
          ),
        )
      ],
    );
  }
}
