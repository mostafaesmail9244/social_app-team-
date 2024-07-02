import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../profile/data/models/profile_response/profile_response.dart';
import '../../view_model/cubit/chat_cubit.dart';
import '../../view_model/cubit/chat_state.dart';
import 'chat_text_field.dart';
import 'groubed_list_view.dart';

class ChatViewBody extends StatelessWidget {
  final UserResponse user;
  final TextEditingController textControler;
  final ScrollController scrollController;

  const ChatViewBody({
    super.key,
    required this.user,
    required this.textControler,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ChatCubit>();
    return Column(
      children: [
        Expanded(
          child: BlocBuilder<ChatCubit, ChatState>(
            builder: (context, state) {
              return GroupedListViewBuilder(
                scrollController: scrollController,
                user: user,
                cubit: cubit,
                // email: widget.user.email,
              );
            },
          ),
        ),
        ChatTextField(
          controler: textControler,
          cubit: cubit,
          toID: user.id!,
        ),
      ],
    );
  }
}
