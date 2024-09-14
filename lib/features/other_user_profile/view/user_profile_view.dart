import 'package:flutter/material.dart';
import 'package:social_app/core/shared/widgets/build_app_bar.dart';
import '../data/model/chat_args.dart';
import 'widgets/user_profile_body.dart';

class OtherUserProfileView extends StatelessWidget {
  final ChatArgs data;
  const OtherUserProfileView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: data.name),
      body: OtherUserProfileBody(data: data),
    );
  }
}
