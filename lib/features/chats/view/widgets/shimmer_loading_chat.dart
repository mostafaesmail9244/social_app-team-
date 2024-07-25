import 'package:flutter/material.dart';
import 'package:social_app/core/helper/spacing.dart';
import '../../../../core/widgets/custom_shimmer.dart';

class ShimmerLoadingChat extends StatelessWidget {
  const ShimmerLoadingChat({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const ShimmerLoading(),
      separatorBuilder: (context, index) => verticalSpace(20),
      itemCount: 10,
    );
  }
}

class ShimmerLoading extends StatelessWidget {
  const ShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            child: CustomShimmer(
              height: 50,
              width: 50,
              radius: 320,
            ),
          ),
          SizedBox(width: 15),
          CustomShimmer(
            height: 15,
            width: 100,
            radius: 0,
          ),
        ],
      ),
    );
  }
}
