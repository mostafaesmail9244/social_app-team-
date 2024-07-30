import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/shared/widgets/custom_loading.dart';
import 'package:social_app/core/style/app_colors.dart';
import '../../../../rooms_chat/data/models/room_model/rooms_response.dart';
import '../../../view_model/chat_cubit/chat_cubit.dart';

class SendMessageButton extends StatelessWidget {
  final ChatCubit cubit;
  final RoomsData room;
  final bool isSendImageView;
  final File? image;
  const SendMessageButton({
    super.key,
    required this.cubit,
    required this.room,
    required this.isSendImageView,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatCubit, ChatState>(
      listener: (context, state) {
        if (state is ChatImageSuccess) {
          customLoading(context);
          Future.delayed(const Duration(seconds: 2), () {
            context.pop();
            context.pop();
          });
        }
      },
      child: IconButton.filled(
        onPressed: () {
          if (cubit.textControler.text.trim().isNotEmpty) {
            cubit.sendMessage(
              toId: room.otherUserDetails!.id!,
              roomId: room.id,
              image: isSendImageView ? image : null,
              type: isSendImageView ? 'image' : null,
              isSendImageView: isSendImageView,
            );
          }
          cubit.textControler.clear();
        },
        icon: const Icon(Icons.send_rounded),
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.mainBlue),
        ),
      ),
    );
  }
}
