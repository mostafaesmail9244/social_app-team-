import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/style/text_styles.dart';

class LikeAndCommentNumber extends StatelessWidget {
  const LikeAndCommentNumber({
    super.key,
  });

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
    );
  }
}
