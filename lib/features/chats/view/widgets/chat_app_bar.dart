import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:social_app/core/style/app_colors.dart';
import 'package:social_app/core/shared/widgets/custom_cached_image.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/style/text_styles.dart';
import '../../../rooms_chat/data/models/room_model/rooms_response.dart';
import '../../view_model/chat_cubit/chat_cubit.dart';

AppBar chatAppBar(RoomsData room) {
  return AppBar(
    leadingWidth: 30,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(5),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        color: Colors.grey.shade200,
        height: 1,
      ),
    ),
    title: Row(
      children: [
        CircleAvatar(
          child: CustomCachedNetworkImage(
            imageUrl: room.otherUserDetails!.image!,
            size: 20,
            height: 50,
            width: 50,
            radius: 320,
          ),
        ),
        horizontalSpace(8),
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
            verticalSpace(4),
            Text(
              DateFormat("hh:mm a").format(
                DateTime.parse(
                  DateTime.fromMillisecondsSinceEpoch(
                    int.parse(room.lastMessageTime),
                  ).toString(),
                ),
              ),
              style: TextStyle(
                fontSize: 12.sp,
                color: const Color(0xff4CD964),
              ),
            ),
          ],
        ),
      ],
    ),
    actions: [
      BlocBuilder<ChatCubit, ChatState>(
        buildWhen: (previous, current) => current is SelectBubble,
        builder: (context, state) {
          final cubit = context.read<ChatCubit>();
          if (context.read<ChatCubit>().selectedMessages.isNotEmpty) {
            return IconButton(
              onPressed: () {
                cubit.deleteMessage(roomId: room.id);
              },
              icon: const Icon(IconlyLight.delete),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    ],
  );
}
