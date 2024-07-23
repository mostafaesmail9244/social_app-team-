import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/core/router/routes.dart';
import 'package:social_app/core/widgets/custom_cached_image.dart';
import '../../../../core/style/app_colors.dart';
import '../../../../core/style/text_styles.dart';
import '../../data/model/posts_response.dart';

class ImageAndContent extends StatelessWidget {
  final PostsData post;
  const ImageAndContent({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ReadMoreText(
            post.content!,
            trimLines: 4,
            trimCollapsedText: 'Show more',
            trimExpandedText: 'Show less',
            style: AppTextStyles.font15MediumBlack12.copyWith(fontSize: 12.sp),
            lessStyle: AppTextStyles.font14DarkBlueMedium.copyWith(
              color: AppColors.darkBlue.withOpacity(.7),
            ),
            moreStyle: AppTextStyles.font14DarkBlueMedium.copyWith(
              color: AppColors.darkBlue.withOpacity(.7),
            ),
          ),
        ),
        verticalSpace(10),
        if (post.image != '')
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: InkWell(
              onTap: () {
                context.pushNamed(Routes.imageDetails, arguments: post.image!);
              },
              child: CustomCachedNetworkImage(
                imageUrl: post.image!,
                radius: 8,
                height: 200,
                width: double.infinity,
                // fit: BoxFit.fill,
              ),
            ),
          ),
      ],
    );
  }
}
