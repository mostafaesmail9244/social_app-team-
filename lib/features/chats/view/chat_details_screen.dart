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

class ChatDetailsScreen extends StatefulWidget {
  const ChatDetailsScreen({super.key, required this.user});
  final UserResponse user;

  @override
  State<ChatDetailsScreen> createState() => _ChatDetailsScreenState();
}

class _ChatDetailsScreenState extends State<ChatDetailsScreen> {
  @override
  void initState() {
    context.read<ChatCubit>().getMessages(receiverId: widget.user.id!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              child: CustomCachedNetworkImage(
                imageUrl: widget.user.image!,
                size: 20,
                height: 50,
                width: 50,
                radius: 320,
              ),
            ),
            horizontalSpace(10),
            Text(
              widget.user.name!,
              style: AppTextStyles.font18Black,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            BlocBuilder<ChatCubit, ChatState>(
              buildWhen: (context, state) => state is GetMessagesSuccessState,
              builder: (context, state) {
                return state.maybeMap(
                  getMessagesSuccessState: (val) {
                    return Expanded(
                      child: ListView.separated(
                        itemCount: context.read<ChatCubit>().messages.length,
                        separatorBuilder: (context, index) => verticalSpace(10),
                        itemBuilder: (context, index) {
                          if (CashHelper.get(key: CashConstants.userId) !=
                              context
                                  .read<ChatCubit>()
                                  .messages[index]
                                  .receiverId) {
                            return _chatBubbleCurrentUser(
                                message:
                                    context.read<ChatCubit>().messages[index]);
                          } else {
                            return _chatBubbleAnotherUser(
                                message:
                                    context.read<ChatCubit>().messages[index]);
                          }
                        },
                      ),
                    );
                  },
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
            ChatTextField(receiverId: widget.user.id!)
          ],
        ),
      ),
    );
  }

  Widget _chatBubbleCurrentUser({required MessageModel message}) => Align(
        alignment: AlignmentDirectional.topEnd,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8),
              topRight: Radius.circular(8),
              topLeft: Radius.circular(8),
            ),
          ),
          child: Text(message.message),
        ),
      );

  Widget _chatBubbleAnotherUser({required MessageModel message}) => Align(
        alignment: AlignmentDirectional.topStart,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(8),
              topRight: Radius.circular(8),
              topLeft: Radius.circular(8),
            ),
          ),
          child: Text(message.message),
        ),
      );

  // String _formatTimestamp(DateTime timestamp) {
  //   final now = DateTime.now();
  //   final isToday = now.year == timestamp.year &&
  //       now.month == timestamp.month &&
  //       now.day == timestamp.day;

  //   if (isToday) {
  //     return DateFormat('HH:mm').format(timestamp);
  //   } else {
  //     return DateFormat('MM/dd, HH:mm').format(timestamp);
  //   }
  // }
}

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
