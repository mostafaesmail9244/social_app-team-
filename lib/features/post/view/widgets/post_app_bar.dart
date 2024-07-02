import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/cubits/pick_image_cubit/pick_image_cubit.dart';
import '../../../../core/style/text_styles.dart';
import '../../view_model/add_post_cubit/add_cubit.dart';

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
          context.read<AddPostCubit>().validateThenDoAddPost(
                image: context.read<PickImageCubit>().selectPostImage,
              );
        },
        child: Text(
          'Post',
          style: AppTextStyles.font24SemiBoldBlue.copyWith(fontSize: 16.sp),
        ),
      )
    ],
  );
}
