import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/core/style/text_styles.dart';
import 'package:social_app/core/widgets/custom_cached_image.dart';
import 'package:social_app/features/chats/data/models/room_model/rooms_response.dart';
import 'package:social_app/features/chats/view_model/room_cubit/room_cubit.dart';
import 'package:social_app/features/profile/data/models/profile_response/profile_response.dart';
import '../../../../core/router/routes.dart';

class UserItem extends StatelessWidget {
  final bool isSearch;
  final RoomsData? room;
  final UserData? user;

  const UserItem({
    super.key,
    required this.isSearch,
    this.room,
    this.user,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isSearch == true
            ? context.read<RoomCubit>().createRoom(
                  toId: user!.id!,
                  userName: user!.name!,
                  userPicture: user!.image!,
                )
            : context.pushNamed(Routes.chatView, arguments: room);
      },
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            child: CustomCachedNetworkImage(
              imageUrl: isSearch == true
                  ? user!.image!
                  : room!.otherUserDetails!.image!,
              size: 20,
              height: 50,
              width: 50,
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
