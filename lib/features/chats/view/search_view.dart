import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../view_model/search_cubit/search_cubit.dart';
import '../view_model/search_cubit/search_state.dart';
import 'widgets/search_app_bar.dart';
import 'widgets/body/search_body.dart';
import 'widgets/shimmer_loading_chat.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: searchAppBar(context),
      body: SafeArea(
        child: BlocBuilder<SearchCubit, SearchState>(
          buildWhen: (previous, current) =>
              current is GetUsersLoading ||
              current is GetUsersError ||
              current is GetUsersSuccess ||
              current is FilterUserSuccess,
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox.shrink(),
              initial: () => const SizedBox.shrink(),
              getUsersLoading: () => const ShimmerLoadingChat(),
              getUsersError: (error) => const ShimmerLoadingChat(),
              getUsersSuccess: (data) => SearchBody(users: data.users!),
              filterUserSuccess: (filterUsers) =>
                  SearchBody(users: filterUsers),
            );
          },
        ),
      ),
    );
  }
}
