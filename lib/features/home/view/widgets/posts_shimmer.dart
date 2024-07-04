import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/custom_shimmer.dart';

class PostsShimmer extends StatelessWidget {
  const PostsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
      child: Column(
        children: [
          Row(
            children: [
              const CustomShimmer(height: 40, width: 40, radius: 320),
              horizontalSpace(10),
              Column(
                children: [
                  const CustomShimmer(height: 15, width: 100, radius: 5),
                  verticalSpace(5),
                  const CustomShimmer(height: 15, width: 100, radius: 5),
                ],
              ),
            ],
          ),
          verticalSpace(15),
          const CustomShimmer(height: 150, width: double.infinity, radius: 10),
        ],
      ),
    );
  }
}
