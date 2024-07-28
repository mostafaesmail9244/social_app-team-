import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/core/style/text_styles.dart';
import 'package:social_app/core/shared/widgets/custom_cached_image.dart';
import 'package:social_app/features/profile/data/models/profile_response/profile_response.dart';
import '../../router/routes.dart';

class UserItem extends StatelessWidget {
  final UserData? user;
  const UserItem({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.otherUserProfileView, arguments: user);
      },
      child: Row(
        children: [
          CircleAvatar(
            radius: 26.r,
            child: CustomCachedNetworkImage(
              imageUrl: user!.image!,
              size: 20,
              height: 100,
              width: 100,
              radius: 320,
            ),
          ),
          horizontalSpace(10),
          Text(
            user!.name!,
            style: AppTextStyles.font18Black,
          ),
        ],
      ),
    );
  }
}
