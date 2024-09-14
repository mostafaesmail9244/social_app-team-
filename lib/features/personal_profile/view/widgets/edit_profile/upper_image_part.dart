import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/shared/pick_image_cubit/pick_image_states.dart';
import '../../../../../core/helper/cash_helper/cash_helper.dart';
import '../../../../../core/helper/cash_helper/cash_helper_constants.dart';
import '../../../../../core/shared/pick_image_cubit/pick_image_cubit.dart';
import '../../../../../core/shared/widgets/custom_cached_image.dart';
import '../../../../../core/shared/widgets/icon_button_filled.dart';

class UpperImagePart extends StatelessWidget {
  final Size size;
  final PickImageCubit cubit;
  const UpperImagePart({super.key, required this.cubit, required this.size});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PickImageCubit, PickImageStates>(
      buildWhen: (previous, current) {
        return current is PickPostImageStates || current is RemoveImageState;
      },
      builder: (context, state) {
        return Stack(
          children: [
            cubit.postImage == null
                ? CustomCachedNetworkImage(
                    radius: 10,
                    imageUrl: CashHelper.get(key: CashConstants.coverImage),
                    height: 200,
                    width: double.infinity,
                  )
                : SizedBox(
                    height: size.height * .29,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.file(
                        cubit.postImage!,
                        fit: BoxFit.fill,
                        width: double.infinity,
                      ),
                    ),
                  ),
            Positioned(
              top: 5,
              right: 5,
              child: CustomIconFilled(
                onPressed: () {
                  cubit.postImage == null
                      ? cubit.pickImage(isGallary: true,post: true)
                      : cubit.removeImage();
                },
                icon: cubit.postImage == null
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
