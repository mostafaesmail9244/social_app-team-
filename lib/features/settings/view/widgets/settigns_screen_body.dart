import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/core/router/routes.dart';
import 'package:social_app/core/style/text_styles.dart';
import 'package:social_app/features/auth/data/models/auth_model/user_model.dart';
import 'package:social_app/features/layout/logic/layout_cubit/layout_cubit.dart';
// import 'package:social_app/features/settings/logic/cubit/settings_cubit.dart';

class SettingScreenBody extends StatelessWidget {
  const SettingScreenBody({super.key, this.userModel});
  final UserModel? userModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: BlocBuilder<LayoutCubit, LayoutState>(
        builder: (context, state) {
          return ListView(
            children: [
              SizedBox(
                height: context.deviceHeight * .3,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    if (userModel!.coverImage != null)
                      Align(
                        alignment: Alignment.topCenter,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: FancyShimmerImage(
                              height: context.deviceHeight * .24,
                              width: double.infinity,
                              boxFit: BoxFit.cover,
                              imageUrl: userModel!.coverImage!),
                        ),
                      ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: CircleAvatar(
                        radius: 56,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 55,
                          backgroundColor: Colors.white,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(55),
                            child: FancyShimmerImage(
                              imageUrl: userModel!.profileImage!,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Text(
                userModel!.name!,
                textAlign: TextAlign.center,
                style: TextStyles.font24Black700,
              ),
              verticalSpace(10),
              Text(
                userModel!.bio ?? 'Write your bio...',
                textAlign: TextAlign.center,
                style: TextStyles.font14GreyRegular,
              ),
              verticalSpace(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  button(onTap: () {}, nums: '100', title: 'Posts'),
                  button(onTap: () {}, nums: '55', title: 'Photos'),
                  button(onTap: () {}, nums: '10k', title: 'Followers'),
                  button(onTap: () {}, nums: '64', title: 'Following'),
                ],
              ),
              verticalSpace(10),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          backgroundColor: Colors.transparent,
                          elevation: 0),
                      child: Text(
                        'Add Photo',
                        style: TextStyles.font14BlueSemiBold,
                      ),
                    ),
                  ),
                  horizontalSpace(10),
                  OutlinedButton(
                    onPressed: () {
                      context.pushNamed(Routes.editeProfileScreen,
                          arguments: userModel!);
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: const Icon(
                      Icons.edit_outlined,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
              verticalSpace(20),
              TextButton(onPressed: () {}, child: const Text('Log out')),
            ],
          );
        },
      ),
    );
  }

  InkWell button({
    required void Function()? onTap,
    required String nums,
    required String title,
  }) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Text(
            nums,
            style: TextStyles.font18Black,
          ),
          Text(
            title,
            style: TextStyles.font14GreyRegular,
          ),
        ],
      ),
    );
  }
}
