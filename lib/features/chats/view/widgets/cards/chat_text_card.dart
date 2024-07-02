import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../data/models/message_model.dart';
import '../text_widget.dart';

class ChatTextCard extends StatelessWidget {
  final MessageModel message;
  final bool isUserMessage;

  const ChatTextCard({
    super.key,
    required this.message,
    required this.isUserMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
            padding: EdgeInsets.only(
              right: isUserMessage ? 60 : 50,
              bottom: 10,
            ),
            child: TextWidget(
              label: message.message,
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: isUserMessage ? Colors.black : Colors.white,
            )),
        Positioned(
          bottom: -1,
          right: -1,
          child: Row(
            children: [
              TextWidget(
                label: DateFormat("hh:mm a").format(DateTime.parse(
                  DateTime.fromMillisecondsSinceEpoch(
                    int.parse(message.date),
                  ).toString(),
                )),
                fontSize: 8.sp,
                color: isUserMessage ? Colors.grey : Colors.white,
                // textAlign: TextAlign.right,
              ),
              isUserMessage
                  ? Icon(
                      Icons.done_all,
                      size: 13.sp,
                      color: message.read == '' ? Colors.black : Colors.teal,
                    )
                  : const SizedBox(width: 4)
            ],
          ),
        ),
      ],
    );
  }
}
