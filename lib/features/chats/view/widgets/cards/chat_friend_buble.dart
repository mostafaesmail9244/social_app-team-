import 'package:flutter/material.dart';

import '../../../data/models/message_model/message_model.dart';

class ChatBubleForFriend extends StatelessWidget {
  final MessageModel message;
  const ChatBubleForFriend({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
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
                  borderRadius: 
                  const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(6),
                  ),
                  color:
                      message.type == 'image' ? null : const Color(0xffB73BFF),
                ),
                //       child: message.type == 'image'
                //           ? ChatImageCard(message: message, user: user)
                //           : ChatTextCard(message: message, user: user),
                //     ),
                //   ),
                // ),
                // SizedBox(width: 5.w),
                // CashedImageProvider(pic: user.pic!, radius: 14),
              ),
            ),
          )
        ],
      ),
    );
  }
}
