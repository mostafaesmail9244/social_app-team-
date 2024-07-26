import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/shared/pick_image_cubit/pick_image_cubit.dart';
import '../../../../core/shared/pick_image_cubit/pick_image_states.dart';
import '../../../../core/style/app_colors.dart';
import '../../../../core/shared/widgets/icon_button_filled.dart';

class BuildImagePost extends StatelessWidget {
  final PickImageCubit cubit;
  const BuildImagePost({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PickImageCubit, PickImageStates>(
      builder: (context, state) {
        return cubit.selectPostImage != null
            ? Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 180.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.grey300),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.file(
                        cubit.selectPostImage!,
                        fit: BoxFit.fill,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 15,
                    child: CustomIconFilled(
                      onPressed: () {
                        cubit.removeImage();
                      },
                      icon: Icons.delete_outline_rounded,
                    ),
                  )
                ],
              )
            : const SizedBox();
      },
    );
  }
}
