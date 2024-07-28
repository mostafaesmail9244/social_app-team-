import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/core/style/text_styles.dart';
import 'package:social_app/core/shared/widgets/custom_cached_image.dart';
import 'package:social_app/features/profile/data/models/profile_response/profile_response.dart';
import '../../router/routes.dart';
import '../../../features/room/data/models/room_model/rooms_response.dart';

class UserItem extends StatelessWidget {
  final bool isSearch;
  final RoomsData? room;
  final UserData? user;
  const UserItem({super.key, required this.isSearch, this.room, this.user});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isSearch == true
            ? context.pushNamed(Routes.otherUserProfileView, arguments: user)
            : context.pushNamed(Routes.chatView, arguments: room);
      },
      child: Row(
        children: [
          CircleAvatar(
            radius: 26.r,
            child: CustomCachedNetworkImage(
              imageUrl: isSearch == true
                  ? user!.image!
                  : room!.otherUserDetails!.image!,
              size: 20,
              height: 100,
              width: 100,
              radius: 320,
            ),
          ),
          horizontalSpace(10),
          Text(
            isSearch == true ? user!.name! : room!.otherUserDetails!.name!,
            style: AppTextStyles.font18Black,
          ),
        ],
      ),
    );
  }
}
