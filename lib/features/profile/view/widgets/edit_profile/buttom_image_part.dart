import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/style/app_colors.dart';
import '../../../../../core/helper/cash_helper/cash_helper.dart';
import '../../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../../../core/widgets/custom_cached_image.dart';
import '../../../../../core/widgets/icon_button_filled.dart';
import '../../../view_model/pick_image_cubit/pick_image_cubit.dart';
import '../../../view_model/pick_image_cubit/pick_image_states.dart';

class LowerPart extends StatelessWidget {
  const LowerPart({super.key, required this.cubit, required this.size});
  final Size size;
  final PickImageProfileCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PickImageProfileCubit, PickProfileImageStates>(
      buildWhen: (previous, current) {
        return current is PickProfileImageState || current is RemoveImageState;
      },
      builder: (context, state) {
        return Positioned(
          left: -1,
          right: -1,
          bottom: -1,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              CircleAvatar(
                radius: 67,
                backgroundColor: AppColors.mainBlue,
                child: CircleAvatar(
                  radius: 65,
                  backgroundColor: Colors.white,
                  child: cubit.selectProfileImage == null
                      ? CustomCachedNetworkImage(
                          radius: 65,
                          height: 150,
                          size: 20,
                          width: double.infinity,
                          imageUrl:
                              CashHelper.get(key: CashConstants.userImage),
                        )
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(65),
                          child: Image.file(
                            cubit.selectProfileImage!,
                            fit: BoxFit.fill,
                            width: double.infinity,
                          ),
                        ),
                ),
              ),
              Positioned(
                bottom: -2,
                right: size.height * .135,
                child: CustomIconFilled(
                  onPressed: () {
                    cubit.selectProfileImage == null
                        ? cubit.pickFromGallary(false)
                        : cubit.removeImage();
                  },
                  icon: cubit.selectProfileImage == null
                      ? Icons.camera_alt_outlined
                      : Icons.delete_outline_rounded,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
