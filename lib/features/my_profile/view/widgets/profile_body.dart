import 'package:flutter/material.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/core/style/text_styles.dart';
import '../../data/models/profile_response/profile_response.dart';
import 'detail_buttom_widget.dart';
import 'edit_profile/edit_button_section.dart';
import 'logout_button.dart';
import 'profile_image_section.dart';

class ProfileBody extends StatelessWidget {
  final UserData data;
  const ProfileBody({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        ProfileImagesSection(data: data),
        Text(
          data.name!,
          //  userModel!.name!,
          textAlign: TextAlign.center,
          style: AppTextStyles.font24Black700,
        ),
        verticalSpace(10),
        Text(
          data.bio!,
          //  userModel!.bio ?? 'Write your bio...',
          textAlign: TextAlign.center,
          style: AppTextStyles.font14GreyRegular,
        ),
        verticalSpace(30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            button(onTap: () {}, nums: '100', title: 'Posts'),
            button(onTap: () {}, nums: '55', title: 'Photos'),
            button(
              onTap: () {},
              nums: data.followers!.length.toString(),
              title: 'Followers',
            ),
            button(
              onTap: () {},
              nums: data.following!.length.toString(),
              title: 'Following',
            ),
          ],
        ),
        verticalSpace(20),
        const EditButtonSection(),
        verticalSpace(40),
        const LogoutButton(),
      ],
    );
  }
}
