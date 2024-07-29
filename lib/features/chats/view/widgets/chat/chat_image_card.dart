import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/shared/widgets/custom_cached_image.dart';
import 'package:social_app/core/style/text_styles.dart';
import '../../../../../core/router/routes.dart';
import '../../../data/models/message_model/message_model.dart';
import '../text_widget.dart';

class ChatImageCard extends StatelessWidget {
  final MessageModel message;
  final bool isMyMessage;
  const ChatImageCard(
      {super.key, required this.message, required this.isMyMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: context.deviceWidth / 1.5),
      padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(6), // Background color
      ),
      child: Column(
        crossAxisAlignment:
            isMyMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              context.pushNamed(Routes.imageDetails, arguments: message.image!);
            },
            child: CustomCachedNetworkImage(
              imageUrl: message.image!,
              radius: 4,
              width: double.infinity,
              height: MediaQuery.sizeOf(context).width / 1.5,
            ),
          ),
          const SizedBox(height: 8),
          Align(
            alignment:
                isMyMessage ? Alignment.centerLeft : Alignment.centerRight,
            child: Text(
              message.message,
              style: AppTextStyles.font13DarkBlueMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 5),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextWidget(
                  label: DateFormat("hh:mm a").format(DateTime.parse(
                    DateTime.fromMillisecondsSinceEpoch(
                      int.parse(message.date),
                    ).toString(),
                  )),
                  fontSize: 8.sp,
                  color: Colors.black,
                ),
                isMyMessage
                    ? Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Icon(
                          Icons.done_all,
                          size: 12.sp,
                          color: message.read == ''
                              ? const Color.fromARGB(255, 110, 96, 96)
                              : Colors.teal,
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
