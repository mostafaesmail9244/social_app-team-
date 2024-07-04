import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../../core/style/text_styles.dart';

class CommentAndShareSection extends StatelessWidget {
  // final TextEditingController commentController;
  final bool isLike;
  const CommentAndShareSection({super.key, required this.isLike});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
