import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/cubits/pick_image_cubit/pick_image_cubit.dart';
import '../../../../core/style/text_styles.dart';
import '../../../../core/widgets/custom_error.dart';
import '../../view_model/add_post&palm_cubit/add_cubit.dart';

postAppBar(BuildContext context) {
  return AppBar(
    surfaceTintColor: Colors.white,
    backgroundColor: Colors.white,
    scrolledUnderElevation: 0.0,
    title: Text(
      'Add Post',
      style: AppTextStyles.font24SemiBoldBlue.copyWith(fontSize: 20.sp),
    ),
    actions: [
      TextButton(
        onPressed: () {
          var imageCubit = context.read<PickImageCubit>();
          if (imageCubit.selectPostImage == null) {
            customErrorWidget(context, "Please select image");
          } else {
            context
                .read<AddPostCubit>()
                .validateThenDoAddPost(image: imageCubit.selectPostImage!);
          }
        },
        child: Text(
          'Post',
          style: AppTextStyles.font24SemiBoldBlue.copyWith(fontSize: 16.sp),
        ),
      )
    ],
  );
}
