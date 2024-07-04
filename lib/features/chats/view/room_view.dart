import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/features/chats/view/widgets/shimmer_loading_chat.dart';
import 'package:social_app/features/chats/view_model/room_cubit/room_state.dart';
import '../../../core/widgets/build_app_bar.dart';
import '../view_model/room_cubit/room_cubit.dart';
import 'widgets/room/room_body.dart';

class RoomView extends StatelessWidget {
  const RoomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'chats',
        isIcon: true,
        icon: Icons.search,
        onPressed: () {},
      ),
      body: SafeArea(
        child: BlocBuilder<RoomCubit, RoomState>(
          buildWhen: (previous, current) =>
              current is GetRoomsLoading ||
              current is GetRoomsError ||
              current is GetRoomsSuccess,
          builder: (context, state) {
            return state.maybeWhen(
              getRoomsLoading: () => const ShimmerLoadingChat(),
              getRoomsSuccess: (data) => RoomBody(data: data),
              getRoomsError: (error) => const ShimmerLoadingChat(),
              initial: () => const SizedBox.shrink(),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}
