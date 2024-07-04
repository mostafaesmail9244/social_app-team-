import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../data/models/message_model/message_model.dart';
import '../../view_model/chat_cubit/chat_cubit.dart';
import 'cards/chat_buble.dart';
import 'grouped_date_widget.dart';

class GroupedListViewBuilder extends StatelessWidget {
  final ScrollController scrollController;
  final ChatCubit cubit;
  const GroupedListViewBuilder({
    super.key,
    required this.scrollController,
    required this.cubit,
  });

  @override
  Widget build(BuildContext context) {
    return GroupedListView<MessageModel, String>(
      physics: const ClampingScrollPhysics(),
      reverse: true,
      order: GroupedListOrder.DESC,
      sort: false,
      controller: scrollController,
      elements: cubit.messagesList,
      groupBy: (message) {
        final timestamp = int.parse(message.date);
        final date = DateTime.fromMillisecondsSinceEpoch(timestamp);
        return DateFormat('yyyy-MM-dd').format(date);
      },
      groupSeparatorBuilder: (String date) {
        final now = DateTime.now();
        final formattedDate = DateFormat('yyyy-MM-dd').format(now);
        final yesterday = now.subtract(const Duration(days: 1));
        final formattedYesterday = DateFormat('yyyy-MM-dd').format(yesterday);

        if (date == formattedDate) {
          return const GroupedDateWidget(label: 'Today');
        } else if (date == formattedYesterday) {
          return const GroupedDateWidget(label: 'Yesterday');
        } else {
          return GroupedDateWidget(
            label: DateFormat('MMMM d').format(DateTime.parse(date)),
          );
        }
      },
      itemBuilder: (context, MessageModel message) {
        return ChatBuble(
          message: message,
          isUserMessage:
              CashHelper.get(key: CashConstants.userId) == message.fromId,
        );
      },
    );
  }
}
