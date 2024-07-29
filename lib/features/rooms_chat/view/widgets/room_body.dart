import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helper/spacing.dart';
import '../../data/models/room_model/rooms_response.dart';
import '../../view_model/room_cubit/room_cubit.dart';
import 'room_card.dart';

class RoomBody extends StatelessWidget {
  final List<RoomsData>? data;
  const RoomBody({super.key, required this.data});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: RefreshIndicator(
        onRefresh: () async {
          return await context.read<RoomCubit>().getRooms();
        },
        child: ListView.separated(
          itemCount: data?.length ?? 0,
          itemBuilder: (context, index) => RoomCard(room: data![index]),
          separatorBuilder: (context, index) => verticalSpace(4),
        ),
      ),
    );
  }
}
