import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/features/profile/view_model/get_user_cubit/get_user_cubit.dart';
import 'edit_profile/edit_button_section.dart';
import 'logout_button.dart';
import 'profile_image_section.dart';
import 'profile_text_section.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  void initState() {
    context.read<GetUserCubit>().emitGetUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        const ProfileImagesSection(),
        const ProfileTextSection(),
        verticalSpace(20),
        const EditButtonSection(),
        verticalSpace(40),
        const LogoutButton(),
      ],
    );
  }
}
