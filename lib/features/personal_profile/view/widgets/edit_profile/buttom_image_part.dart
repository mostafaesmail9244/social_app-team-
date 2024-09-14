import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/shared/pick_image_cubit/pick_image_cubit.dart';
import 'package:social_app/core/style/app_colors.dart';
import '../../../../../core/helper/cash_helper/cash_helper.dart';
import '../../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../../../core/shared/pick_image_cubit/pick_image_states.dart';
import '../../../../../core/shared/widgets/custom_cached_image.dart';
import '../../../../../core/shared/widgets/icon_button_filled.dart';

class LowerPart extends StatelessWidget {
  const LowerPart({super.key, required this.cubit, required this.size});
  final Size size;
  final PickImageCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PickImageCubit, PickImageStates>(
      buildWhen: (previous, current) {
        return current is PickImageSuccessState || current is RemoveImageState;
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
                  child: cubit.selectImage == null
                      ? CustomCachedNetworkImage(
                          height: 150,
                          width: double.infinity,
                          radius: 65,
                          size: 20,
                          imageUrl:
                              CashHelper.get(key: CashConstants.userImage),
                        )
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(65),
                          child: Image.file(
                            cubit.selectImage!,
                            fit: BoxFit.fill,
                            width: double.infinity,
                          ),
                        ),
                ),
              ),
              Positioned(
                bottom: -3,
                right: size.height * .135,
                child: CustomIconFilled(
                  onPressed: () {
                    cubit.selectImage == null
                        ? cubit.pickImage(isGallary: true)
                        : cubit.removeImage();
                  },
                  icon: cubit.selectImage == null
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
