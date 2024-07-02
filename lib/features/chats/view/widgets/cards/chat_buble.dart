import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/core/style/app_colors.dart';
import '../../../data/models/message_model.dart';
import 'chat_image_card.dart';
import 'chat_text_card.dart';

class ChatBuble extends StatelessWidget {
  final bool isUserMessage;
  final MessageModel message;
  const ChatBuble(
      {super.key, required this.message, required this.isUserMessage});

  @override
  Widget build(BuildContext context) {
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
                        message: message, isUserMessage: isUserMessage),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
