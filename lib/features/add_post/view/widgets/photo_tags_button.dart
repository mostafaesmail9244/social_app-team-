import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '../../../../core/shared/pick_image_cubit/pick_image_cubit.dart';
import '../../../../core/style/text_styles.dart';
import '../../../signup/views/widgets/image_picker_dialog.dart';

class PhotoTagsButton extends StatelessWidget {
  final PickImageCubit cubit;
  const PhotoTagsButton({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton.icon(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return ImagePickerDialog(
                    cameraFun: () => cubit.pickImage(isGallary: false),
                    galleryFun: () => cubit.pickImage(isGallary: true),
                  );
                },
              );
            },
            icon: const Icon(
              IconlyLight.image,
              color: Colors.blue,
            ),
            label: Text(
              'add photo',
              style: AppTextStyles.font14BlueSemiBold,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              '# tags',
              style: AppTextStyles.font14BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
