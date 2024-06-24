import 'package:flutter/material.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/helper/spacing.dart';
import '../../../../core/widgets/custom_shimmer.dart';

class GetProfileLoading extends StatelessWidget {
  const GetProfileLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: context.deviceHeight * .3,
            child: const Stack(
              children: [
                CustomShimmer(
                  height: 170,
                  radius: 10,
                  width: double.infinity,
                ),
                Positioned(
                  left: -1,
                  right: -1,
                  bottom: -1,
                  child: CircleAvatar(
                    radius: 55,
                    child: CustomShimmer(
                      height: 100,
                      radius: 55,
                      width: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
          verticalSpace(60),
          const CustomShimmer(
            height: 70,
            radius: 10,
            width: double.infinity,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: CustomShimmer(
              height: 50,
              radius: 10,
              width: double.infinity,
            ),
          ),
          const CustomShimmer(
            height: 50,
            radius: 10,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
