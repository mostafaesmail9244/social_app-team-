import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/core/style/app_colors.dart';
import 'package:social_app/core/widgets/custom_cached_image.dart';
import '../../../../core/style/text_styles.dart';
import '../../data/models/room_model/rooms_response.dart';

AppBar chatAppBar(RoomsData room) {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.white,
    // bottom: PreferredSize(
    //   preferredSize: const Size.fromHeight(5),
    //   child: Container(
    //     margin: const EdgeInsets.symmetric(horizontal: 20),
    //     color: const Color(0xffD9D9D9),
    //     height: 1,
    //   ),
    // ),
    title: Row(
      children: [
        CircleAvatar(
          radius: 25.r,
          child: CustomCachedNetworkImage(
            imageUrl: room.otherUserDetails!.image!,
            size: 20,
            height: 50,
            width: 50,
            radius: 320,
          ),
        ),
        SizedBox(width: 8.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              room.otherUserDetails!.name!,
              style: AppTextStyles.font15DarkBlueMedium.copyWith(
                color: AppColors.grey75,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              ' user.lastActivat',
              style: TextStyle(
                fontSize: 12.sp,
                color: const Color(0xff4CD964),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
