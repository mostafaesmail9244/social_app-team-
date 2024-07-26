import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/style/app_colors.dart';
import '../../data/model/posts_response.dart';
import '../../view_model/get_posts_cubit/get_posts_cubit.dart';
import 'post_item.dart';
import 'posts_shimmer.dart';

class PostsListView extends StatelessWidget {
  final bool isLoading;
  final List<PostsData>? posts;
  const PostsListView({super.key, required this.isLoading, this.posts});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<GetPostsCubit>().emitGetPostsData();
      },
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: isLoading ? 5 : posts!.length,
        separatorBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Divider(
              color: AppColors.darkBlue,
              thickness: 2,
            ),
          );
        },
        itemBuilder: (context, index) {
          return isLoading
              ? const PostsShimmer()
              : PostItem(
                  post: posts![index],
                );
        },
      ),
    );
  }
}
