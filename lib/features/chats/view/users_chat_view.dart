import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/d_injection/injection.dart';
import 'package:social_app/features/chats/view_model/cubit/chat_cubit.dart';
import 'package:social_app/features/chats/view_model/cubit/chat_state.dart';
import 'package:social_app/features/chats/view/widgets/chat_body.dart';
import 'package:social_app/features/chats/view/widgets/shimmer_loading_chat.dart';

class HomeChatView extends StatelessWidget {
  const HomeChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChatCubit>()..getAllUsers(),
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<ChatCubit, ChatState>(
            buildWhen: (previous, current) =>
                current is GetUsersSuccessState ||
                current is GetUsersErrorState ||
                current is GetUsersLoadingState,
            builder: (context, state) {
              return state.maybeWhen(
                getUsersLoadingState: () => const ShimmerLoadingChat(),
                getUsersSuccessState: (users) =>
                    ChatBody(users: context.read<ChatCubit>().users),
                getUsersErrorState: (error) => const ShimmerLoadingChat(),
                initial: () => Container(),
                orElse: () => Container(),
              );
            },
          ),
        ),
      ),
    );
  }
}
