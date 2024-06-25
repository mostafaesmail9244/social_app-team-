import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/extentaion.dart';
import '../../../../../core/helper/cash_helper/cash_helper.dart';
import '../../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../../../core/widgets/custom_cached_image.dart';
import '../../../view_model/pick_image_cubit/pick_image_cubit.dart';
import '../../../view_model/pick_image_cubit/pick_image_states.dart';
import 'edit_profile_image_section.dart';

class UpperImagePart extends StatelessWidget {
  final PickImageProfileCubit cubit;
  const UpperImagePart({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PickImageProfileCubit, PickProfileImageStates>(
      buildWhen: (previous, current) {
        return current is PickPCoverImageState || current is RemoveCoverState;
      },
      builder: (context, state) {
        return Stack(
          children: [
            cubit.selectCoverImage == null
                ? CustomCachedNetworkImage(
                    radius: 10,
                    imageUrl: CashHelper.get(key: CashConstants.coverImage),
                    height: 175,
                    width: double.infinity,
                  )
                : SizedBox(
                    height: context.deviceHeight * .3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.file(
                        cubit.selectCoverImage!,
                        fit: BoxFit.fill,
                        width: double.infinity,
                      ),
                    ),
                  ),
            Positioned(
              top: 5,
              right: 5,
              child: IconFilled(
                onPressed: () {
                  cubit.selectCoverImage == null
                      ? cubit.pickFromGallary(true)
                      : cubit.removeCover();
                },
                icon: cubit.selectCoverImage == null
                    ? Icons.camera_alt_outlined
                    : Icons.delete_outline_rounded,
              ),
            ),
          ],
        );
      },
    );
  }
}
