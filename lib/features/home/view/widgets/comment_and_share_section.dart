import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/router/routes.dart';
import 'package:social_app/core/style/app_colors.dart';
import '../../../../core/style/text_styles.dart';
import '../../../../core/widgets/custom_cached_image.dart';
import '../../data/model/posts_response.dart';

class CommentAndShareSection extends StatelessWidget {
  final PostsData post;
  final bool isLike;
  const CommentAndShareSection(
      {super.key, required this.isLike, required this.post});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            radius: 12,
            child: CustomCachedNetworkImage(
              imageUrl: post.userImage ?? "",
              height: 20,
              width: 20,
              size: 5,
              radius: 320,
            ),
          ),
        ),
        TextButton(
          onPressed: () =>
              context.pushNamed(Routes.commentView, arguments: post.postId),
          child: Text(
            'Write a comment.... ',
            style: AppTextStyles.font14GreyRegular,
          ),
        ),
        const Spacer(),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                (isLike ? IconlyBold.heart : IconlyLight.heart),
                color: Colors.red,
              ),
            ),
            Text(
              'Like',
              style: AppTextStyles.font13GrayRegular,
            ),
          ],
        ),
        FittedBox(
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  (Icons.ios_share_outlined),
                  color: AppColors.lightMainBlue,
                ),
              ),
              Text(
                'Share',
                style: AppTextStyles.font13GrayRegular,
              ),
            ],
          ),
        )
      ],
    );
  }
}
