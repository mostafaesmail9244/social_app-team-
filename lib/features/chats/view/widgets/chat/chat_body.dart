import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../room/data/models/room_model/rooms_response.dart';
import '../../../view_model/chat_cubit/chat_cubit.dart';
import 'chat_text_field.dart';
import 'groubed_list_view.dart';

class ChatBody extends StatefulWidget {
  final RoomsData room;
  const ChatBody({super.key, required this.room});

  @override
  State<ChatBody> createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> {
  final ScrollController scrollController = ScrollController();
  final TextEditingController textControler = TextEditingController();
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      context.read<ChatCubit>().readMessage(room: widget.room);
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
    textControler.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ChatCubit>();
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
            builder: (context, state) {
              return GroupedListViewBuilder(
                scrollController: scrollController,
                cubit: cubit,
                //   toId: widget.room.memberDetails!.id!,
              );
            },
          ),
        ),
        ChatTextField(
          controler: textControler,
          cubit: cubit,
          room: widget.room,
        ),
      ],
    );
  }
}
