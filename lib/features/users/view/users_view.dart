import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/users_app_bar.dart';
import 'widgets/users_body.dart';
import '../../chats/view/widgets/shimmer_loading_chat.dart';
import '../view_model/users_search_cubit/users_cubit.dart';
import '../view_model/users_search_cubit/users_state.dart';

class UsersView extends StatelessWidget {
  const UsersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: searchUsersAppBar(context),
      body: BlocBuilder<UsersSearchCubit, UsersSearchState>(
        // buildWhen: (previous, current) =>
        //     current is GetUsersLoading ||
        //     current is GetUsersError ||
        //     current is GetUsersSuccess ||
        //     current is FilterUserSuccess,
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            getUsersLoading: () => const ShimmerLoadingChat(),
            getUsersError: (error) => const ShimmerLoadingChat(),
            getUsersSuccess: (data) => UsersBody(users: data.users!),
            filterUserSuccess: (filterUsers) => UsersBody(users: filterUsers),
          );
        },
      ),
    );
  }
}
