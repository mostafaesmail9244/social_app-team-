import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/style/app_colors.dart';
import '../../../../core/style/text_styles.dart';
import '../../data/model/posts_response.dart';

class LikeAndCommentNumber extends StatelessWidget {
  final PostsData post;
  const LikeAndCommentNumber({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon((IconlyLight.heart), color: Colors.red, size: 16),
            horizontalSpace(5),
            Text(
              // widget.postModel.likes!.toString(),
              '${post.loves?.length}  likes',
              style: AppTextStyles.font13GrayRegular,
            ),
          ],
        ),
        Row(
          children: [
            const Icon(
              (IconlyLight.chat),
              color: AppColors.lightMainBlue,
              size: 16,
            ),
            horizontalSpace(5),
            // Text('${widget.postModel.comments!.toString()} comment',
            Text('${post.commentCount} comment',
                style: AppTextStyles.font13GrayRegular),
          ],
        ),
      ],
    );
  }
}
