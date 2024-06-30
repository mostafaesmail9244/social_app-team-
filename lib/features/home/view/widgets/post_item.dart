import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:readmore/readmore.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/core/style/app_colors.dart';
import 'package:social_app/core/style/text_styles.dart';
import 'package:social_app/features/post/models/post_model.dart';

class PostItem extends StatefulWidget {
  const PostItem({
    super.key,
    required this.postModel,
  });
  final PostModel postModel;
  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  TextEditingController commentController = TextEditingController();
  bool isLike = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CircleAvatar(
                    backgroundImage:
                        NetworkImage(widget.postModel.profileImage!),
                    radius: 20,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.postModel.name!,
                          style: AppTextStyles.font18Black),
                      Text(
                        widget.postModel.date!.toString(),
                        style: AppTextStyles.font16Grey,
                      ),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
              ],
            ),
            verticalSpace(5),
            const Divider(
              height: 1,
              color: AppColors.grey,
            ),
            verticalSpace(10),
            ReadMoreText(
              widget.postModel.post!,
              trimLines: 4,
              trimCollapsedText: 'Show more',
              trimExpandedText: 'Show less',
              style: AppTextStyles.font18Black,
              lessStyle: AppTextStyles.font14DarkBlueMedium.copyWith(
                color: AppColors.darkBlue.withOpacity(.7),
              ),
              moreStyle: AppTextStyles.font14DarkBlueMedium.copyWith(
                color: AppColors.darkBlue.withOpacity(.7),
              ),
            ),
            verticalSpace(5),
            if (widget.postModel.image != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: widget.postModel.image != null
                    ? FancyShimmerImage(
                        imageUrl: widget.postModel.image!,
                        height: context.deviceHeight * .3,
                        // boxFit: BoxFit.,
                        width: double.infinity,
                      )
                    : Container(),
              ),
            verticalSpace(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon((IconlyLight.heart),
                        color: Colors.red, size: 16),
                    horizontalSpace(5),
                    Text(
                      // widget.postModel.likes!.toString(),
                      ' likes',
                      style: AppTextStyles.font13GrayRegular,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon((IconlyLight.chat), color: Colors.red, size: 16),
                    horizontalSpace(5),
                    // Text('${widget.postModel.comments!.toString()} comment',
                    Text('0 comment', style: AppTextStyles.font13GrayRegular),
                  ],
                ),
              ],
            ),
            verticalSpace(10),
            const Divider(
              height: 1,
              color: AppColors.grey,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        //add current user image
                        'https://img.freepik.com/premium-photo/nighttime-reflections-lofi-manga-wallpaper-sad-beautiful-scene-with-cityscape_442337-37827.jpg?w=740'),
                    radius: 12,
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: commentController,
                    decoration: InputDecoration(
                      hintText: 'Write a comment...',
                      border: InputBorder.none,
                      hintStyle: AppTextStyles.font13GrayRegular,
                    ),
                  ),
                ),
                FittedBox(
                  child: Row(
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
                ),
                FittedBox(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          (Icons.ios_share_outlined),
                          color: Colors.red,
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
            )
          ],
        ),
      ),
    );
  }
}
