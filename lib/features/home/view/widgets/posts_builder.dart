import 'package:flutter/material.dart';

import '../../../../core/style/app_colors.dart';
import '../../data/model/posts_response.dart';
import 'post_item.dart';
import 'posts_shimmer.dart';

class PostsBuilder extends StatelessWidget {
  final bool loading;
  final List<PostsData>? posts;
  const PostsBuilder({
    super.key,
    required this.loading,
    required this.posts,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: loading ? 5 : posts!.length,
      separatorBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(),
          child: Divider(
            color: AppColors.darkBlue,
            thickness: 2,
          ),
        );
      },
      itemBuilder: (context, index) {
        return loading
            ? const PostsShimmer()
            : PostItem(
                post: posts![index],
              );
      },
    );
  }
}
