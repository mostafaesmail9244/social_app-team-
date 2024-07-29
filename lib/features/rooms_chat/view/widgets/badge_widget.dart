import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper.dart';
import 'package:social_app/core/style/app_colors.dart';
import 'package:social_app/core/style/text_styles.dart';
import 'package:social_app/features/rooms_chat/view_model/room_cubit/room_cubit.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../chats/data/models/message_model/message_model.dart';
import '../../data/models/room_model/rooms_response.dart';

class BadgeWidget extends StatelessWidget {
  final RoomsData room;
  const BadgeWidget({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: context.read<RoomCubit>().unReadMessagesCount(room.id),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final unReadList = snapshot.data?.docs
              .map((e) => MessageModel.fromSnapshot(e))
              .where((element) => element.read == "")
              .where((element) =>
                  element.fromId != CashHelper.get(key: CashConstants.userId));
          return unReadList!.isNotEmpty
              ? Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Badge(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    label: Text(unReadList.length.toString()),
                    backgroundColor: AppColors.lightMainBlue,
                    textStyle: AppTextStyles.font13BlueSemiBold,
                    largeSize: 25,
                  ),
              )
              : const SizedBox.shrink();
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
