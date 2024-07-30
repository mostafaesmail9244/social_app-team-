import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/d_injection/injection.dart';
import '../../../core/shared/pick_image_cubit/pick_image_cubit.dart';
import '../../rooms_chat/data/models/room_model/rooms_response.dart';
import 'widgets/chat_app_bar.dart';
import 'widgets/chat_body.dart';

class ChatView extends StatelessWidget {
  final RoomsData room;
  const ChatView({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PickImageCubit>(),
      child: Scaffold(
        appBar: chatAppBar(room),
        body: ChatBody(room: room),
      ),
    );
  }
}
