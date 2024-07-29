import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/shared/pick_image_cubit/pick_image_cubit.dart';
import '../../../core/d_injection/injection.dart';
import '../../rooms_chat/data/models/room_model/rooms_response.dart';
import '../view_model/chat_cubit/chat_cubit.dart';
import 'widgets/chat_app_bar.dart';
import 'widgets/chat_body.dart';

class ChatView extends StatelessWidget {
  final RoomsData room;
  const ChatView({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ChatCubit>()..getMessages(roomId: room.id),
        ),
        BlocProvider(create: (context) => getIt<PickImageCubit>()),
      ],
      child: Scaffold(
        appBar: chatAppBar(room),
        body: ChatBody(room: room),
      ),
    );
  }
}
