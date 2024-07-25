import 'package:flutter/material.dart';
import '../style/app_colors.dart';

class CustomIconFilled extends StatelessWidget {
  final void Function() onPressed;
  final IconData icon;
  final bool isComment;
  const CustomIconFilled({
    super.key,
    required this.onPressed,
    required this.icon,
    this.isComment = false,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: isComment
            ? WidgetStateProperty.all(AppColors.lightMainBlue)
            : WidgetStateProperty.all(AppColors.mainBlue),
      ),
      icon: Icon(icon, color: Colors.white),
    );
  }
}
