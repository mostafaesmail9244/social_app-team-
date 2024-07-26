import 'package:flutter/material.dart';
import 'package:social_app/core/helper/spacing.dart';
import '../../../profile/data/models/profile_response/profile_response.dart';
import '../../../profile/view/widgets/profile_image_section.dart';
import 'tab_bar.dart';
import 'text_section.dart';
import 'user_info_follow.dart';

class OtherUserProfileBody extends StatelessWidget {
  final UserData data;
  const OtherUserProfileBody({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverToBoxAdapter(
            child: Column(
              children: [
                ProfileImagesSection(data: data),
                 UserInfoAndFollow(data: data),
                verticalSpace(25),
                const TextSection(),
                verticalSpace(10),
              ],
            ),
          ),
        ];
      },
      body: const TabBarDemo(),
    );
  }
}
