import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/style/app_colors.dart';
import 'package:social_app/features/chats/views/widgets/chat/send_message_button.dart';
import '../../../../../core/shared/widgets/app_text_filed.dart';
import '../../../../rooms_chat/data/models/room_model/rooms_response.dart';
import '../../../view_model/chat_cubit/chat_cubit.dart';
import 'suffix_icon_section.dart';

class ChatTextField extends StatelessWidget {
  final RoomsData room;
  final bool isSendImageView;
  final File? image;
  const ChatTextField({
    super.key,
    required this.room,
    this.image,
    this.isSendImageView = false,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ChatCubit>();
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: AppTextFormFiled(
              filled: true,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              fillColor: AppColors.grey200,
              hintText: 'send message',
              validator: (p0) {},
              keyboardType: TextInputType.text,
              controller: cubit.textControler,
              suffixIcon: isSendImageView
                  ? null
                  : SuffixIconSection(room: room, cubit: cubit),
            ),
          ),
          const SizedBox(width: 5),
          SendMessageButton(
            cubit: cubit,
            room: room,
            isSendImageView: isSendImageView,
            image: image,
          ),
        ],
      ),
    );
  }
}
