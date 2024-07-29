import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:social_app/core/helper/extentaion.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/shared/widgets/custom_cached_image.dart';
import '../../../../core/style/text_styles.dart';
import '../../data/models/room_model/rooms_response.dart';

class RoomCard extends StatelessWidget {
  final RoomsData room;
  const RoomCard({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
        side: BorderSide(color: Colors.grey.shade200, width: 1),
      ),
      child: ListTile(
        onTap: () {
          context.pushNamed(Routes.chatView, arguments: room);
        },
        leading: InkWell(
          onTap: () => context.pushNamed(Routes.imageDetails,
              arguments: room.otherUserDetails!.image!),
          child: CircleAvatar(
            radius: 26.r,
            child: CustomCachedNetworkImage(
              imageUrl: room.otherUserDetails!.image!,
              size: 20,
              height: 100,
              width: 100,
              radius: 320,
            ),
          ),
        ),
        title: Text(
          room.otherUserDetails!.name!,
          style: AppTextStyles.font14BlueSemiBold
              .copyWith(color: Colors.black, fontSize: 15.sp),
        ),
        subtitle:
            Text(room.lastMessage, style: AppTextStyles.font14RegularBlack),
        trailing: Text(
          DateFormat("hh:mm a").format(
            DateTime.parse(
              DateTime.fromMillisecondsSinceEpoch(
                int.parse(room.lastMessageTime),
              ).toString(),
            ),
          ),
          style: AppTextStyles.font14GreyRegular.copyWith(fontSize: 10),
        ),
      ),
    );
  }
}
