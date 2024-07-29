import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/core/shared/widgets/icon_button_filled.dart';
import '../../../../core/shared/pick_image_cubit/pick_image_cubit.dart';
import '../../../../core/shared/pick_image_cubit/pick_image_states.dart';
import '../../../../core/style/app_colors.dart';
import 'image_picker_dialog.dart';

class ImageProfile extends StatelessWidget {
  const ImageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<PickImageCubit>();

    return Center(
      child: BlocBuilder<PickImageCubit, PickImageStates>(
        builder: (context, state) {
          return Stack(
            children: [
              CircleAvatar(
                radius: 57.r,
                backgroundColor: AppColors.mainBlue,
                child: CircleAvatar(
                  radius: 55.r,
                  child: cubit.selectChatImage == null
                      ? Image.asset('assets/images/user.png')
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(320),
                          child: Image.file(
                            cubit.selectChatImage!,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                ),
              ),
              Positioned(
                bottom: -2,
                right: -2,
                child: CustomIconFilled(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return ImagePickerDialog(
                          cameraFun: () => cubit.pickFromCamera(),
                          galleryFun: () => cubit.pickFromGallary(false),
                          removeFun: () => cubit.removeImage(),
                          profilePic: cubit.selectChatImage,
                        );
                      },
                    );
                  },
                  icon: Icons.edit,
                ),
                // ),
              ),
            ],
          );
        },
      ),
    );
  }
}
