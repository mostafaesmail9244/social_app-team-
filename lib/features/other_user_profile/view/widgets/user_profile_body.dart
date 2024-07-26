import 'package:flutter/material.dart';
import 'package:social_app/core/helper/spacing.dart';
import '../../../my_profile/data/models/profile_response/profile_response.dart';
import '../../../my_profile/view/widgets/detail_buttom_widget.dart';
import '../../../my_profile/view/widgets/profile_image_section.dart';
import 'tab_bar.dart';
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    button(nums: '100', title: 'Posts'),
                    button(nums: '55', title: 'Photos'),
                    button(nums: '10k', title: 'Followers'),
                    button(nums: '64', title: 'Following'),
                  ],
                ),
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
