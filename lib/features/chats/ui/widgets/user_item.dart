import 'package:flutter/material.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/core/router/routes.dart';

import 'package:social_app/core/style/text_styles.dart';
import 'package:social_app/core/widgets/custom_cached_image.dart';
import 'package:social_app/features/profile/data/models/profile_response/profile_response.dart';

class UserItem extends StatelessWidget {
  const UserItem({super.key, required this.user});
  final UserResponse user;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.chatDetailsView, arguments: user);
      },
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            child: CustomCachedNetworkImage(
              imageUrl: user.image!,
              size: 20,
              height: 50,
              width: 50,
              radius: 320,
            ),
          ),
          horizontalSpace(10),
          Text(
            user.name!,
            style: AppTextStyles.font18Black,
          ),
        ],
      ),
    );
  }
}

