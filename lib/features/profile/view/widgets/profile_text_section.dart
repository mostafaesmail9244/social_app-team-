import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/core/style/text_styles.dart';
import '../../data/models/profile_response/profile_response.dart';
import 'detail_buttom_widget.dart';

class ProfileTextSection extends StatelessWidget {
  final UserData data;
  const ProfileTextSection({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          data.name!,
          textAlign: TextAlign.center,
          style: AppTextStyles.font24Black700,
        ),
        verticalSpace(10),
        Text(
          data.bio!,
          textAlign: TextAlign.center,
          style: AppTextStyles.font14GreyRegular,
        ),
        verticalSpace(30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            button(
              nums: data.followers!.length.toString(),
              title: 'Followers',
            ),
            horizontalSpace(30),
            button(
              nums: data.following!.length.toString(),
              title: 'Following',
            ),
          ],
        ),
      ],
    );
  }
}
