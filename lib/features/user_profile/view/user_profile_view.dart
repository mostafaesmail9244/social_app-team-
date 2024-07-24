import 'package:flutter/material.dart';

import '../../my_profile/data/models/profile_response/profile_response.dart';
import 'widgets/user_profile_body.dart';

class UserProfileView extends StatelessWidget {
  final UserData data;
  const UserProfileView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: UserProfileBody(data: data),
      ),
    );
  }
}
