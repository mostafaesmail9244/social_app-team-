import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/features/chats/view_model/room_cubit/room_cubit.dart';
import 'package:social_app/features/chats/view_model/room_cubit/room_state.dart';
import '../../../../core/widgets/components.dart';
import '../../../../core/widgets/custom_loading.dart';

class RoomBlocListener extends StatelessWidget {
  const RoomBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RoomCubit, RoomState>(
      listenWhen: (prv, cur) =>
          cur is CreateRoomsLoading ||
          cur is CreateRoomsError ||
          cur is CreateRoomsSuccess,
      listener: (context, state) {
        state.whenOrNull(createRoomsLoading: () {
          customLoading(context);
        }, createRoomsSuccess: (userData) {
          context.pop();
          context.pop();
        }, createRoomsError: (error) {
          context.pop();
          flutterToast(text: error, state: ToastEnum.error);
        });
      },
      child: const SizedBox.shrink(),
    );
  }
}
