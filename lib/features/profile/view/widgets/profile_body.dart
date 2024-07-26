import 'package:flutter/material.dart';
import 'package:social_app/core/helper/spacing.dart';
import '../../data/models/profile_response/profile_response.dart';
import 'edit_profile/edit_button_section.dart';
import 'logout_button.dart';
import 'profile_image_section.dart';
import 'profile_text_section.dart';

class ProfileBody extends StatelessWidget {
  final UserData data;
  const ProfileBody({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        ProfileImagesSection(data: data),
        ProfileTextSection(data: data),
        verticalSpace(20),
        const EditButtonSection(),
        verticalSpace(40),
        const LogoutButton(),
      ],
    );
  }
}
