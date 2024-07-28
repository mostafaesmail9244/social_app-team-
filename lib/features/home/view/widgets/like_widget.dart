import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/style/text_styles.dart';
import '../../data/model/posts_response.dart';
import '../../view_model/like_commen_cubit/like_commen_cubit.dart';

class LikeWidget extends StatelessWidget {
  final PostsData post;
  final LikeCommentCubit cubit;
  const LikeWidget({super.key, required this.post, required this.cubit});

  @override
  Widget build(BuildContext context) {
    // Start listening to changes in the post document
    cubit.listenToLikesPost(post.postId);

    return Row(
      children: [
        BlocBuilder<LikeCommentCubit, LikeCommentState>(
          buildWhen: (previous, current) =>
              current is LikePostUpdated && current.postId == post.postId,
          builder: (context, state) {
            return IconButton(
              onPressed: () => cubit.toggleLike(post.postId),
              icon: Icon(
                (cubit.isLiked(post.postId)
                    ? IconlyBold.heart
                    : IconlyLight.heart),
                color: Colors.red,
              ),
            );
          },
        ),
        Text(
          'Like',
          style: AppTextStyles.font13GrayRegular,
        ),
      ],
    );
  }
}
