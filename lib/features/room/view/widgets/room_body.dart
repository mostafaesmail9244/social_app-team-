import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/features/chats/view_model/room_cubit/room_cubit.dart';
import '../../../../core/helper/spacing.dart';
import '../../../chats/view/widgets/user_item.dart';
import '../../data/models/room_model/rooms_response.dart';

class RoomBody extends StatelessWidget {
  final RoomsResponse data;
  const RoomBody({super.key, required this.data});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: RefreshIndicator(
        onRefresh: () async {
          return await context.read<RoomCubit>().getRooms();
        },
        child: ListView.separated(
          itemCount: data.rooms!.length,
          itemBuilder: (context, index) => UserItem(
            isSearch: false,
            room: data.rooms![index],
          ),
          separatorBuilder: (context, index) => verticalSpace(16),
        ),
      ),
    );
  }
}
