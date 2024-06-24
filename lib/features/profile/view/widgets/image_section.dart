import 'package:flutter/material.dart';
import 'package:social_app/core/helper/extentaion.dart';
import '../../../../core/widgets/custom_cached_image.dart';
import '../../data/models/profile_response/profile_response.dart';

class ImagesSection extends StatelessWidget {
  final UserResponse data;
  const ImagesSection({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.deviceHeight * .3,
      child: Stack(
        children: [
          CustomCachedNetworkImage(
            radius: 10,
            imageUrl: data.coverImage!,
            height: 170,
            width: double.infinity,
          ),
          Positioned(
            left: -1,
            right: -1,
            bottom: -1,
            child: CircleAvatar(
              radius: 57,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 55,
                backgroundColor: Colors.white,
                child: CustomCachedNetworkImage(
                  radius: 55,
                  height: 100,
                  width: double.infinity,
                  imageUrl: data.image!,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
