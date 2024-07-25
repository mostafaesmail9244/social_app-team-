import 'package:flutter/material.dart';
import 'package:social_app/core/style/app_colors.dart';
import '../../../../../core/widgets/app_text_filed.dart';
import '../../../../room/data/models/room_model/rooms_response.dart';
import '../../../view_model/chat_cubit/chat_cubit.dart';

class ChatTextField extends StatelessWidget {
  final TextEditingController controler;
  final ChatCubit cubit;
  final RoomsData room;

  const ChatTextField({
    super.key,
    required this.controler,
    required this.cubit,
    required this.room,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: AppTextFormFiled(
              filled: true,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              fillColor: AppColors.grey200,
              hintText: 'send message',
              validator: (p0) {},
              keyboardType: TextInputType.text,
              controller: controler,
            ),
          ),
          const SizedBox(width: 6),
          IconButton.filled(
            onPressed: () async {
              if (controler.text.trim().isNotEmpty) {
                await cubit.sendMessage(
                  toId: room.otherUserDetails!.id!,
                  message: controler.text,
                  roomId: room.id,
                );
              }
              controler.clear();
            },
            icon: const Icon(Icons.send_rounded),
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(AppColors.mainBlue),
            ),
          )
        ],
      ),
    );
  }
}
