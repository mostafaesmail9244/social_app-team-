import 'package:flutter/material.dart';
import 'package:social_app/core/helper/extentaion.dart';
import '../../../../core/shared/widgets/custom_cached_image.dart';
import '../../data/models/profile_response/profile_response.dart';

class ProfileImagesSection extends StatelessWidget {
  final UserData data;
  const ProfileImagesSection({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.deviceHeight * .35,
      child: Stack(
        children: [
          CustomCachedNetworkImage(
            radius: 10,
            imageUrl: data.coverImage!,
            height: 190,
            width: double.infinity,
          ),
          Positioned(
            left: -1,
            right: -1,
            bottom: -1,
            child: CircleAvatar(
              radius: 67,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 65,
                child: CustomCachedNetworkImage(
                  radius: 65,
                  height: 150,
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
