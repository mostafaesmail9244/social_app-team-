import 'package:flutter/material.dart';
import '../../../../../core/helper/spacing.dart';
import '../../../../profile/data/models/profile_response/profile_response.dart';
import '../room/room_bloc_listener.dart';
import '../user_item.dart';

class SearchBody extends StatelessWidget {
  final List<UserData> users;
  const SearchBody({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: users.length,
              itemBuilder: (context, index) => UserItem(
                isSearch: true,
                user: users[index],
              ),
              separatorBuilder: (context, index) => verticalSpace(16),
            ),
          ),
          const RoomBlocListener(),
        ],
      ),
    );
  }
}
