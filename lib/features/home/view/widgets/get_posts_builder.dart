import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../view_model/get_posts_cubit/get_posts_cubit.dart';
import '../../view_model/get_posts_cubit/get_posts_states.dart';
import 'posts_list_view.dart';

class GetPostsBuilder extends StatelessWidget {
  const GetPostsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetPostsCubit, GetPostsStates>(
      buildWhen: (previous, current) =>
          current is GetPostsLoading ||
          current is GetPostsError ||
          current is GetPostsSuccess,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: SizedBox.shrink,
          getPostsLoading: () => const PostsListView(isLoading: true),
          getPostsError: (error) => const PostsListView(isLoading: true),
          getPostsSuccess: (data) => PostsListView(
            isLoading: false,
            posts: data.posts,
          ),
        );
      },
    );
  }
}
