import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../style/app_colors.dart';
import '../style/text_styles.dart';

class AppTextFormFiled extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final bool? filled;
  final Color? fillColor;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String? hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final int? maxLines;
  final Function(String?)? onChanged;
  final TextEditingController? controller;
  final Function(String?) validator;
  final TextInputType keyboardType;
  final double? borderRadius;
  final FocusNode? focusNode;
  const AppTextFormFiled({
    super.key,
    required this.hintText,
    required this.validator,
    required this.keyboardType,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.isObscureText,
    this.suffixIcon,
    this.prefixIcon,
    this.controller,
    this.maxLines,
    this.onChanged,
    this.filled,
    this.fillColor,
    this.borderRadius,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      maxLines: maxLines ?? 1,
      onChanged: onChanged,
      controller: controller,
      keyboardType: keyboardType,
      validator: (value) {
        return validator(value);
      },
      decoration: InputDecoration(
        isDense: true,
        filled: filled,
        fillColor: fillColor,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
        hintStyle: hintStyle ?? AppTextStyles.font13RegularGrey66,
        focusedBorder: focusedBorder ??
            buildOutlineInputBorder(AppColors.mainBlue, borderRadius),
        enabledBorder: enabledBorder ??
            buildOutlineInputBorder(AppColors.greyED, borderRadius),
        errorBorder: buildOutlineInputBorder(AppColors.fillRed, borderRadius),
        focusedErrorBorder:
            buildOutlineInputBorder(AppColors.fillRed, borderRadius),
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ??
          AppTextStyles.font14RegularBlack.copyWith(color: AppColors.grey24),
    );
  }

  OutlineInputBorder buildOutlineInputBorder(Color color, double? radius) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 1.3),
      borderRadius: BorderRadius.circular(radius ?? 16),
    );
  }
}
