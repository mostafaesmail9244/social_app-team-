import 'package:flutter/material.dart';
import 'package:social_app/core/shared/widgets/build_app_bar.dart';
import 'widgets/profile_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'Profile'),
      body: const ProfileBody(),
    );
  }
}
