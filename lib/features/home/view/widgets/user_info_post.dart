import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:intl/intl.dart';
import 'package:social_app/core/style/app_colors.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/style/text_styles.dart';
import '../../../../core/shared/widgets/custom_cached_image.dart';
import '../../data/model/posts_response.dart';
import '../../view_model/get_posts_cubit/get_posts_cubit.dart';

class UserInfoPost extends StatelessWidget {
  final PostsData post;
  const UserInfoPost({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCachedNetworkImage(
          imageUrl: post.userImage!,
          radius: 320,
          height: 35,
          width: 40,
          size: 20,
        ),
        horizontalSpace(10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.userName!,
                style: AppTextStyles.font15MediumBlack12,
              ),
              Text(
                DateFormat('d MMM, yyyy').format(DateTime.parse(
                  DateTime.fromMillisecondsSinceEpoch(
                    int.parse(post.date!),
                  ).toString(),
                )),
                style: AppTextStyles.font14GreyRegular
                    .copyWith(color: AppColors.grey75),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {
            context.read<GetPostsCubit>().deletePost(postId: post.postId);
          },
          icon: const Icon(IconlyLight.delete, size: 17),
        ),
      ],
    );
  }
}
