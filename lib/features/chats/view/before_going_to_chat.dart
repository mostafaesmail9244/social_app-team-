import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/style/app_colors.dart';
import 'package:social_app/features/chats/view/chat_view.dart';
import 'package:social_app/features/chats/view_model/room_cubit/room_state.dart';
import '../../../core/d_injection/injection.dart';
import '../view_model/room_cubit/room_cubit.dart';
import '../../my_profile/data/models/profile_response/profile_response.dart';

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
            orElse: () => const Scaffold(
              body: Center(
                  child: CircularProgressIndicator(color: AppColors.mainBlue)),
            ),
            getRoomByMembersSuccess: (room) => ChatView(room: room),
          );
        },
      ),
    );
  }
}
