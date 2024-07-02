import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper_constants.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/helper/spacing.dart';

import 'package:social_app/core/style/text_styles.dart';
import 'package:social_app/core/widgets/app_text_filed.dart';
import 'package:social_app/core/widgets/custom_cached_image.dart';
import 'package:social_app/features/chats/data/models/message_model.dart';
import 'package:social_app/features/chats/view_model/cubit/chat_cubit.dart';
import 'package:social_app/features/chats/view_model/cubit/chat_state.dart';
import 'package:social_app/features/profile/data/models/profile_response/profile_response.dart';


class ChatTextField extends StatefulWidget {
  const ChatTextField({
    super.key,
    required this.receiverId,
  });

  final String receiverId;

  @override
  State<ChatTextField> createState() => _ChatTextFieldState();
}

class _ChatTextFieldState extends State<ChatTextField> {
  final _formKey = GlobalKey<FormState>();
  final messageController = TextEditingController();
  FocusNode messageFocusNode = FocusNode();
  bool isTyping = false;
  bool emptyORNot() {
    if (messageController.text.isEmpty) {
      setState(() {
        isTyping = false;
      });
      return isTyping;
    } else {
      setState(() {
        isTyping = true;
      });
      return isTyping;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Align(
        alignment: AlignmentDirectional.bottomEnd,
        child: Container(
          padding: EdgeInsets.zero,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Expanded(
                child: AppTextFormFiled(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusNode: messageFocusNode,
                  hintText: 'type a message here',
                  controller: messageController,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return null;
                    }
                    return null;
                  },
                  onChanged: (val) => emptyORNot(),
                  keyboardType: TextInputType.text,
                ),
              ),
              isTyping
                  ? ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromHeight(60),
                        shape: const RoundedRectangleBorder(),
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          FocusScope.of(context).unfocus();
                          isTyping = false;
                          await context
                              .read<ChatCubit>()
                              .sendMessage(
                                receiverId: widget.receiverId,
                                message: messageController.text,
                              )
                              .then((value) {
                            messageController.clear();
                            context.read<ChatCubit>().getMessages(
                                  receiverId: widget.receiverId,
                                );
                          });
                        }
                      },
                      child: const Icon(Icons.send),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
