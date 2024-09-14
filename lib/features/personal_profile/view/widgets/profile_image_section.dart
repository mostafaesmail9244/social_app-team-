import 'package:flutter/material.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper.dart';
import 'package:social_app/core/helper/extentaion.dart';
import '../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/shared/widgets/custom_cached_image.dart';
import '../../data/models/profile_response/profile_response.dart';

class ProfileImagesSection extends StatelessWidget {
  final UserData? data;
  const ProfileImagesSection({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.deviceHeight * .35,
      child: Stack(
        children: [
          InkWell(
            onTap: () => context.pushNamed(
              Routes.imageDetails,
              arguments: data?.coverImage ??
                  CashHelper.get(key: CashConstants.coverImage),
            ),
            child: CustomCachedNetworkImage(
              radius: 8,
              imageUrl: data?.coverImage ??
                  CashHelper.get(key: CashConstants.coverImage),
              height: 190,
              width: double.infinity,
            ),
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
                child: InkWell(
                  onTap: () => context.pushNamed(
                    Routes.imageDetails,
                    arguments: data?.image ??
                        CashHelper.get(key: CashConstants.userImage),
                  ),
                  child: CustomCachedNetworkImage(
                    radius: 65,
                    height: 150,
                    width: double.infinity,
                    imageUrl: data?.image ??
                        CashHelper.get(key: CashConstants.userImage),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
