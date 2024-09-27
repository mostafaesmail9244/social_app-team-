import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/style/app_colors.dart';
import '../../../../core/style/text_styles.dart';
import '../../../../core/shared/widgets/custom_cached_image.dart';
import '../../../comment/view/show_comments_viewt.dart';
import '../../data/model/posts_response.dart';
import '../../view_model/like_commet_cubit/like_commet_cubit.dart';
import 'like_widget.dart';

class CommentLikeShareButtons extends StatelessWidget {
  final PostsData post;
  const CommentLikeShareButtons({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LikeCommentCubit>();
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            radius: 12,
            child: CustomCachedNetworkImage(
              imageUrl: post.userImage ?? "",
              height: 50,
              width: 50,
              size: 5,
              radius: 320,
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () => showCommentsPost(context, post.postId),
            // context.pushNamed(Routes.commentView, arguments: post.postId),
            child: Text(
              'Write a comment... ',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.font13GrayRegular,
            ),
          ),
        ),
        LikeWidget(post: post, cubit: cubit),
        TextButton.icon(
          icon: const Icon(
            (Icons.ios_share_outlined),
            color: AppColors.lightMainBlue,
          ),
          onPressed: () {},
          label: Text(
            'Share',
            style: AppTextStyles.font13GrayRegular,
          ),
        ),
      ],
    );
  }
}
