import 'package:flutter/material.dart';
import '../../../../core/helper/spacing.dart';
import '../../../profile/data/models/profile_response/profile_response.dart';
import '../../../../core/shared/widgets/user_item.dart';

class UsersSearchBody extends StatelessWidget {
  final List<UserData> users;
  const UsersSearchBody({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: ListView.separated(
        itemCount: users.length,
        itemBuilder: (context, index) => UserItem(
          isSearch: true,
          user: users[index],
        ),
        separatorBuilder: (context, index) => verticalSpace(16),
      ),
    );
  }
}
