import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/extentaion.dart';
import '../../../../core/shared/widgets/components.dart';
import '../../../../core/shared/widgets/custom_loading.dart';
import '../../view_model/room_cubit/room_cubit.dart';
import '../../view_model/room_cubit/room_state.dart';

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
        if (state is CreateRoomsLoading) {
          customLoading(context);
        } else if (state is CreateRoomsError) {
          context.pop();
          flutterToast(text: state.error, state: ToastEnum.error);
        } else if (state is CreateRoomsSuccess) {
          context.pop();
          context.pop();
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
