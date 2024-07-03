import 'package:flutter/material.dart';
import '../data/models/room_model/rooms_response.dart';
import 'widgets/chat_app_bar.dart';
import 'widgets/body/chat_body.dart';

class ChatView extends StatelessWidget {
  final RoomsData room;
  const ChatView({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: chatAppBar(room),
      body: ChatBody(room: room),
    );
  }
}
