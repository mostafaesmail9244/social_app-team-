import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/core/style/app_colors.dart';
import '../../../../../rooms_chat/data/models/room_model/rooms_response.dart';
import '../../../../data/models/message_model/message_model.dart';
import '../../../../view_model/chat_cubit/chat_cubit.dart';
import 'chat_image_card.dart';
import 'chat_text_card.dart';

class ChatBuble extends StatelessWidget {
  final bool isUserMessage;
  final MessageModel message;
  final RoomsData room;

  const ChatBuble(
      {super.key,
      required this.message,
      required this.isUserMessage,
      required this.room});

  @override
  Widget build(BuildContext context) {
    context.read<ChatCubit>().readMessage(room: room, message: message);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 5.w),
          Expanded(
            child: Align(
              alignment:
                  isUserMessage ? Alignment.centerLeft : Alignment.centerRight,
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.sizeOf(context).width / 1.33,
                ),
                padding: message.type == 'image'
                    ? EdgeInsets.zero
                    : const EdgeInsets.only(
                        left: 10,
                        right: 5,
                        bottom: 5,
                        top: 5,
                      ),
                decoration: BoxDecoration(
                  border: message.type == 'image'
                      ? null
                      : Border.all(color: AppColors.lightMainBlue, width: 1.w),
                  borderRadius: message.type == 'image'
                      ? null
                      : isUserMessage
                          ? const BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(6),
                            )
                          : const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(6),
                            ),
                  color: isUserMessage
                      ? AppColors.moreLightGrey
                      : AppColors.mainBlue.withOpacity(0.75),
                ),
                child: message.type == 'image'
                    ? ChatImageCard(message: message)
                    : ChatTextCard(
                        message: message,
                        isUserMessage: isUserMessage,
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
