import 'package:flutter/material.dart';
import '../../../../../core/helper/spacing.dart';
import '../../../data/models/room_model/rooms_response.dart';
import '../user_item.dart';

class RoomBody extends StatelessWidget {
  final RoomsResponse data;
  const RoomBody({super.key, required this.data});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: RefreshIndicator(
        onRefresh: () async {
          // context.read<ChatCubit>().users = [];
          // return await context.read<ChatCubit>().getAllUsers();
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
