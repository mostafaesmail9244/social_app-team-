import 'package:flutter/material.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/style/app_colors.dart';
import '../../data/model/posts_response.dart';
import 'on_your_mind_widget.dart';
import 'post_item.dart';
import 'posts_shimmer.dart';

class HomeBody extends StatelessWidget {
  final bool loading;
  final List<PostsData>? posts;
  const HomeBody({super.key, required this.loading, this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        const OnYourMindWidget(),
        verticalSpace(10),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: loading ? 5 : posts!.length,
          separatorBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(),
              child: Divider(
                color: AppColors.darkBlue,
                thickness: 3,
              ),
            );
          },
          itemBuilder: (context, index) {
            return loading
                ? const PostsShimmer()
                : PostItem(post: posts![index]);
          },
        ),
        verticalSpace(10),
      ],
    );
  }
}
