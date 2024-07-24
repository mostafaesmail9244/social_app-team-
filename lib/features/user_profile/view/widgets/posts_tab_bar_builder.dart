import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../home/view/widgets/posts_list_view.dart';
import '../../view_model/get_other_user_cubit/get_other_user_cubit.dart';
import '../../view_model/get_other_user_cubit/get_other_user_states.dart';

class PostsTabBarBuilder extends StatelessWidget {
  const PostsTabBarBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetOtherUserPostsCubit, GetOtherUserPostsStates>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          getUserLoading: () => const PostsListView(isLoading: true),
          getUserError: (mess) => const PostsListView(isLoading: true),
          getUserSuccess: (data) =>
              PostsListView(isLoading: false, posts: data.posts),
        );
      },
    );
  }
}
