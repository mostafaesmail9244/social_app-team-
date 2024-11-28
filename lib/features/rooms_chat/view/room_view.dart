import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/features/chats/views/widgets/shimmer_loading_chat.dart';
import '../view_model/room_cubit/room_cubit.dart';
import '../view_model/room_cubit/room_state.dart';
import 'widgets/room_app_bar.dart';
import 'widgets/room_body.dart';

class RoomView extends StatelessWidget {
  const RoomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const RoomAppBarTittle()),
      body: BlocBuilder<RoomCubit, RoomState>(
        buildWhen: (previous, current) =>
            current is GetRoomsLoading ||
            current is GetRoomsError ||
            current is GetRoomsSuccess ||
            current is GetRoomsFilteredSuccess,
        builder: (context, state) {
          if (state is GetRoomsLoading) {
            return const ShimmerLoadingChat();
          } else if (state is GetRoomsError) {
            return const ShimmerLoadingChat();
          } else if (state is GetRoomsSuccess) {
            return RoomBody(data: state.rooms.rooms);
          } else if (state is GetRoomsFilteredSuccess) {
            return RoomBody(data: state.roomsList);
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
