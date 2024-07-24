import 'package:flutter/material.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/core/style/app_colors.dart';
import 'package:social_app/features/home/data/model/posts_response.dart';
import 'image_and_content.dart';
import 'like_and_comment_number.dart';
import 'comment_and_share_section.dart';
import 'user_info_post.dart';

class PostItem extends StatelessWidget {
  final PostsData post;
  const PostItem({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: AppColors.darkBlue.withOpacity(0.2),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(10),
            UserInfoPost(post: post),
            verticalSpace(15),
            ImageAndContent(post: post),
            verticalSpace(10),
            const LikeAndCommentNumber(),
            verticalSpace(10),
            Divider(height: 1, color: AppColors.grey.withOpacity(0.3)),
             CommentAndShareSection(isLike: false, post: post)
          ],
        ),
      ),
    );
  }
}
