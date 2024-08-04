import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/style/app_colors.dart';
import '../../../../core/style/text_styles.dart';
import '../../data/model/posts_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../view_model/like_commet_cubit/like_commet_cubit.dart';

class LikeAndCommentNumber extends StatelessWidget {
  final PostsData post;
  const LikeAndCommentNumber({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LikeCommentCubit>();
    cubit.listenToCommentsCount(post.postId);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon((IconlyLight.heart), color: Colors.red, size: 16),
            horizontalSpace(5),
            BlocBuilder<LikeCommentCubit, LikeCommentState>(
              buildWhen: (previous, current) =>
                  current is LikesCountUpdated && current.postId == post.postId,
              builder: (context, state) {
                return Text(
                  '${cubit.posts[post.postId]?.loves?.length ?? 0} likes',
                  style: AppTextStyles.font13GrayRegular,
                );
              },
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
            BlocBuilder<LikeCommentCubit, LikeCommentState>(
              buildWhen: (previous, current) =>
                  current is CommentsCountUpdated &&
                  current.postId == post.postId,
              builder: (context, state) {
                return Text(
                  '${cubit.commentsCount[post.postId] ?? 0} comments',
                  style: AppTextStyles.font13GrayRegular,
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
