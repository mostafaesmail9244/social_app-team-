import 'package:flutter/material.dart';
import '../../../../core/helper/spacing.dart';
import '../../../my_profile/data/models/profile_response/profile_response.dart';
import '../../../chats/view/widgets/user_item.dart';

class UsersBody extends StatelessWidget {
  final List<UserData> users;
  const UsersBody({super.key, required this.users});

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
//      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
