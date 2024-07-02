import 'package:flutter/material.dart';
import 'package:social_app/core/style/app_colors.dart';
import '../../../../core/widgets/app_text_filed.dart';
import '../../view_model/cubit/chat_cubit.dart';

class ChatTextField extends StatelessWidget {
  final TextEditingController controler;
  final ChatCubit cubit;
  final String toID;

  const ChatTextField({
    super.key,
    required this.controler,
    required this.cubit,
    required this.toID,
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
                    receiverId: toID, message: controler.text);
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
