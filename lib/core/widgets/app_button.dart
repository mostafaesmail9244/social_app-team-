import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.borderRadius,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonWidth,
    this.buttonHeight,
    this.textStyle,
    this.textColor,
    this.buttonStyle,
  });
  final double? borderRadius;
  final Color? backgroundColor;
  final Color? textColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String buttonText;
  final TextStyle? textStyle;
  final VoidCallback onPressed;
  final ButtonStyle? buttonStyle;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: buttonStyle ??
          ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius ?? 30))),
            backgroundColor:
                WidgetStateProperty.all(backgroundColor ?? Colors.blue
                    //AppColors.primaryColor,
                    ),
            padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
            fixedSize: WidgetStateProperty.all(Size(
                buttonWidth?.w ?? double.maxFinite, buttonHeight?.h ?? 45.h)),
          ),
      onPressed: onPressed,
      child: Center(
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
          // style: textStyle ??
          //     AppTextStyles.font16BoldWhite
          //         .copyWith(color: textColor ?? AppColors.white),
        ),
      ),
    );
  }
}
