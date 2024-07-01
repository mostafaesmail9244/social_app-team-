import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/features/chats/logic/cubit/chat_cubit.dart';
import 'package:social_app/features/chats/ui/widgets/user_item.dart';
import 'package:social_app/features/profile/data/models/profile_response/profile_response.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key, required this.users});
  final List<UserResponse> users;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: RefreshIndicator(
        onRefresh: () async {
          context.read<ChatCubit>().users = [];
          return await context.read<ChatCubit>().getAllUsers();
        },
        child: ListView.separated(
          itemCount: users.length,
          itemBuilder: (context, index) => UserItem(user: users[index]),
          separatorBuilder: (context, index) => verticalSpace(16),
        ),
      ),
    );
  }
}
