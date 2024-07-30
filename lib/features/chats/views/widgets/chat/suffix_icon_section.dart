import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/router/routes.dart';
import 'package:social_app/core/shared/pick_image_cubit/pick_image_cubit.dart';
import '../../../../../core/shared/pick_image_cubit/pick_image_states.dart';
import '../../../../rooms_chat/data/models/room_model/rooms_response.dart';
import '../../../view_model/chat_cubit/chat_cubit.dart';

class SuffixIconSection extends StatelessWidget {
  final RoomsData room;
  final ChatCubit cubit;
  const SuffixIconSection({super.key, required this.room, required this.cubit});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PickImageCubit>();
    return BlocListener<PickImageCubit, PickImageStates>(
      listener: (context, state) {
        if (state is PickImageSuccessState) {
          context.pushNamed(
            Routes.sendChatImageView,
            arguments: (room: room, image: state.image),
          );
        }
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {},
            child: const Icon(Icons.emoji_emotions),
          ),
          IconButton(
            onPressed: () {
              cubit.pickImage(isGallary: true);
            },
            icon: const Icon(Icons.camera_alt_outlined),
          ),
        ],
      ),
    );
  }
}
