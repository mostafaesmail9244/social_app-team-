import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

import 'package:social_app/core/helper/spacing.dart';

class ShimmerLoadingChat extends StatelessWidget {
  const ShimmerLoadingChat({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => const ShimmerLoading(),
        separatorBuilder: (context, index) => verticalSpace(16),
        itemCount: 10);
  }
}

class ShimmerLoading extends StatelessWidget {
  const ShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[300], // Placeholder color
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: 100,
            height: 18,
            color: Colors.grey[300], // Placeholder color for text
          ),
        ],
      ),
    );
  }
}
