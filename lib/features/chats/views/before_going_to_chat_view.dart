import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/style/app_colors.dart';
import '../../../core/d_injection/injection.dart';
import '../../profile/data/models/profile_response/profile_response.dart';
import '../../rooms_chat/view_model/room_cubit/room_cubit.dart';
import '../../rooms_chat/view_model/room_cubit/room_state.dart';
import '../view_model/chat_cubit/chat_cubit.dart';
import 'chat_view.dart';

class BeforeGoingToChat extends StatelessWidget {
  final UserData user;
  const BeforeGoingToChat({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RoomCubit>()
        ..getOrCreateRoom(
          toId: user.id!,
          userName: user.name!,
          userPicture: user.image!,
        ),
      child: BlocBuilder<RoomCubit, RoomState>(
        builder: (context, state) {
          return state.maybeWhen(
            getRoomByMembersSuccess: (room) {
              return BlocProvider(
                create: (context) =>
                    getIt<ChatCubit>()..getMessages(roomId: room.id),
                child: ChatView(room: room),
              );
            },
            orElse: () => const Scaffold(
              body: Center(
                child: CircularProgressIndicator(color: AppColors.mainBlue),
              ),
            ),
          );
        },
      ),
    );
  }
}
