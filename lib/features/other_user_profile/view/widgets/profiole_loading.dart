import 'package:flutter/material.dart';
import '../../../../core/shared/widgets/custom_shimmer.dart';

class ProfioleLoading extends StatelessWidget {
  const ProfioleLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 300,
      child: Stack(
        children: [
          CustomShimmer(
            height: 185,
            width: double.infinity,
            radius: 15,
          ),
          Positioned(
            left: -1,
            right: -1,
            bottom: -1,
            child: CircleAvatar(
              radius: 65,
              child: CustomShimmer(
                height: 120,
                width: 120,
                radius: 65,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
