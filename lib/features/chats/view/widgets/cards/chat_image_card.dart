import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:social_app/core/widgets/custom_cached_image.dart';
import '../../../../../core/helper/cash_helper/cash_helper.dart';
import '../../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../data/models/message_model/message_model.dart';
import '../text_widget.dart';

class ChatImageCard extends StatelessWidget {
  final MessageModel message;

  const ChatImageCard({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8), // Background color
      ),
      child: Column(
        crossAxisAlignment:
            CashHelper.get(key: CashConstants.userId) == message.toId
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: CustomCachedNetworkImage(
              imageUrl: message.message,
              width: MediaQuery.sizeOf(context).width / 2,
              height: MediaQuery.sizeOf(context).width / 1.75,
              fit: BoxFit.fill,
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
                  fontSize: 8.5.sp,
                  color: Colors.black,
                ),
                CashHelper.get(key: CashConstants.userId) == message.toId
                    ? Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Icon(
                          Icons.done_all,
                          size: 13.sp,
                          color:
                              message.read == '' ? Colors.black : Colors.teal,
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
