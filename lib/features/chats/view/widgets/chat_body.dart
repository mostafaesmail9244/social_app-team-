import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../rooms_chat/data/models/room_model/rooms_response.dart';
import '../../view_model/chat_cubit/chat_cubit.dart';
import 'chat/chat_text_field.dart';
import 'groubed_list_view.dart';

class ChatBody extends StatefulWidget {
  final RoomsData room;
  const ChatBody({super.key, required this.room});

  @override
  State<ChatBody> createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> {
  final ScrollController scrollController = ScrollController();
  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocConsumer<ChatCubit, ChatState>(
            listener: (context, state) {
              if (state is ChatSuccess) {
                scrollController.animateTo(
                  scrollController.position.minScrollExtent,
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeIn,
                );
              }
            },
            buildWhen: (previous, current) => current is ChatSuccess,
            builder: (context, state) {
              return GroupedListViewBuilder(
                scrollController: scrollController,
                room: widget.room,
              );
            },
          ),
        ),
        ChatTextField(room: widget.room),
      ],
    );
  }
}
