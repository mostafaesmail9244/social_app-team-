import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:social_app/core/style/text_styles.dart';
import 'package:social_app/core/widgets/custom_cached_image.dart';
import '../../../../core/helper/spacing.dart';
import '../../data/model/comment_response.dart';

class CommentItem extends StatelessWidget {
  final CommentData comment;
  const CommentItem({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            child: CustomCachedNetworkImage(
              imageUrl: comment.profilePic,
              height: 50,
              width: 50,
              radius: 320,
            ),
          ),
          horizontalSpace(8),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    comment.username,
                    style: AppTextStyles.font14SemiBoldBlue
                        .copyWith(color: Colors.black),
                  ),
                  verticalSpace(2),
                  Text(comment.tittle),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      DateFormat("hh:mm a").format(
                        DateTime.parse(
                          DateTime.fromMillisecondsSinceEpoch(
                            int.parse(comment.date),
                          ).toString(),
                        ),
                      ),
                      style: AppTextStyles.font13RegularGrey66
                          .copyWith(fontSize: 10),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
