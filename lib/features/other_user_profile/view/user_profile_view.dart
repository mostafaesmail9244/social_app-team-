import 'package:flutter/material.dart';

import '../../my_profile/data/models/profile_response/profile_response.dart';
import 'widgets/user_profile_body.dart';

class OtherUserProfileView extends StatelessWidget {
  final UserData data;
  const OtherUserProfileView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OtherUserProfileBody(data: data),
      ),
    );
  }
}
