import 'package:flutter/material.dart';
import 'package:social_app/core/shared/widgets/build_app_bar.dart';

import '../../my_profile/data/models/profile_response/profile_response.dart';
import 'widgets/user_profile_body.dart';

class OtherUserProfileView extends StatelessWidget {
  final UserData data;
  const OtherUserProfileView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: data.name!),
      body: OtherUserProfileBody(data: data),
    );
  }
}
