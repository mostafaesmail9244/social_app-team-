import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/d_injection/injection.dart';
import 'package:social_app/features/chats/logic/cubit/chat_cubit.dart';
import 'package:social_app/features/chats/logic/cubit/chat_state.dart';
import 'package:social_app/features/chats/ui/widgets/chat_body.dart';
import 'package:social_app/features/chats/ui/widgets/shimmer_loading_chat.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<ChatCubit>()..getAllUsers(),
        child: SafeArea(
          child: BlocBuilder<ChatCubit, ChatState>(
            builder: (context, state) {
              return state.when(
                getUSersLoadingState: () => const ShimmerLoadingChat(),
                getUSersSuccessState: (users) =>
                    ChatBody(users: context.read<ChatCubit>().users),
                getUSersErrorState: (error) => Text(error),
                initial: () => Container(),
              );
            },
          ),
        ),
      ),
    );
  }
}
