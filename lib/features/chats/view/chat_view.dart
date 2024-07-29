import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/d_injection/injection.dart';
import '../../rooms_chat/data/models/room_model/rooms_response.dart';
import '../view_model/chat_cubit/chat_cubit.dart';
import 'widgets/chat/chat_app_bar.dart';
import 'widgets/chat/chat_body.dart';

class ChatView extends StatelessWidget {
  final RoomsData room;
  const ChatView({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChatCubit>()..getMessages(roomId: room.id),
      child: Scaffold(
        appBar: chatAppBar(room),
        body: ChatBody(room: room),
      ),
    );
  }
}
