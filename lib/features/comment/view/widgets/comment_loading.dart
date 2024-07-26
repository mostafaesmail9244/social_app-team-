import 'package:flutter/material.dart';

import '../../../../core/shared/widgets/custom_shimmer.dart';

class CommentLoading extends StatelessWidget {
  const CommentLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            child: CustomShimmer(
              height: 100,
              width: 100,
              radius: 320,
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            child: CustomShimmer(
              height: 50,
              width: double.infinity,
              radius: 12,
            ),
          ),
        ],
      ),
    );
  }
}
