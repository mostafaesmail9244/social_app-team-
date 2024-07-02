import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../profile/data/models/profile_response/profile_response.dart';
import '../view_model/cubit/chat_cubit.dart';
import 'widgets/chat_app_bar.dart';
import 'widgets/chat_view_body.dart';

class ChatView extends StatefulWidget {
  final UserResponse user;
  const ChatView({super.key, required this.user});

  @override
  State<ChatView> createState() => _ChatViewState();
}

@override
class _ChatViewState extends State<ChatView> {
  @override
  void initState() {
    context.read<ChatCubit>().getMessages(receiverId: widget.user.id!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: chatAppBar(widget.user),
      body: ChatViewBody(user: widget.user),
    );
  }
}
