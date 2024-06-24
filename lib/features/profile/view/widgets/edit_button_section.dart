import 'package:flutter/material.dart';
import 'package:social_app/core/helper/extentaion.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/style/text_styles.dart';

class EditButtonSection extends StatelessWidget {
  const EditButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButtonn(
            widget: Text(
              'Add Photo',
              style: AppTextStyles.font14BlueSemiBold,
            ),
            onPressed: () {},
          ),
        ),
        horizontalSpace(10),
        OutlinedButtonn(
          widget: const Icon(
            Icons.edit_outlined,
            color: Colors.blue,
          ),
          onPressed: () => context.pushNamed(Routes.editeProfileScreen),
        ),
      ],
    );
  }
}

class OutlinedButtonn extends StatelessWidget {
  final Widget widget;
  final void Function() onPressed;
  const OutlinedButtonn(
      {super.key, required this.widget, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(6),
        ),
        // backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      child: widget,
    );
  }
}
