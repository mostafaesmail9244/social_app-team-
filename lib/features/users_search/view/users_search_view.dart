import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/users_search_app_bar.dart';
import 'widgets/users_search_body.dart';
import '../../chats/view/widgets/shimmer_loading_chat.dart';
import '../view_model/users_search_cubit/users_search_cubit.dart';
import '../view_model/users_search_cubit/users_search_state.dart';

class UsersSearcView extends StatelessWidget {
  const UsersSearcView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: usersSearchAppBar(context),
      body: BlocBuilder<UsersSearchCubit, UsersSearchState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            getUsersLoading: () => const ShimmerLoadingChat(),
            getUsersError: (error) => const ShimmerLoadingChat(),
            getUsersSuccess: (data) => UsersSearchBody(users: data.users!),
            filterUserSuccess: (filterUsers) =>
                UsersSearchBody(users: filterUsers),
          );
        },
      ),
    );
  }
}
