import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../view_model/get_other_user_cubit/get_other_user_cubit.dart';
import '../../view_model/get_other_user_cubit/get_other_user_states.dart';
import 'post_user_grid_view.dart';

class PhotoTabBarBuilder extends StatelessWidget {
  const PhotoTabBarBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetOtherUserPostsCubit, GetOtherUserPostsStates>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          getUserLoading: () => const PostUserGridView(isLoading: true),
          getUserError: (mess) => const PostUserGridView(isLoading: true),
          getUserSuccess: (data) =>
              PostUserGridView(data: data, isLoading: false),
        );
      },
    );
  }
}
