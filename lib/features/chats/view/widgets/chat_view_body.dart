import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../profile/data/models/profile_response/profile_response.dart';
import '../../view_model/cubit/chat_cubit.dart';
import '../../view_model/cubit/chat_state.dart';
import 'chat_text_field.dart';
import 'groubed_list_view.dart';

class ChatViewBody extends StatelessWidget {
  final UserResponse user;
  const ChatViewBody({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ChatCubit>();
    return Column(
      children: [
        Expanded(
          child: BlocConsumer<ChatCubit, ChatState>(
            listener: (context, state) {
              if (state is SendMessageSuccessState) {
                cubit.scrollController.animateTo(
                  cubit.scrollController.position.minScrollExtent,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
                cubit.getMessages(receiverId: user.id!);
              }
            },
            builder: (context, state) {
              return GroupedListViewBuilder(
                scrollController: cubit.scrollController,
                user: user,
                cubit: cubit,
                // email: widget.user.email,
              );
            },
          ),
        ),
        ChatTextField(
          controler: cubit.textControler,
          cubit: cubit,
          toID: user.id!,
        ),
      ],
    );
  }
}
