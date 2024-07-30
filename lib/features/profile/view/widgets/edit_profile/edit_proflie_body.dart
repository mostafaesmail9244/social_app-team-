import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/shared/pick_image_cubit/pick_image_cubit.dart';
import 'package:social_app/features/profile/view_model/edit_user_cubit/edit_profile_cubit.dart';
import '../../../../../core/helper/spacing.dart';
import '../../../../../core/shared/widgets/app_button.dart';
import 'edit_profile_bloc_listener.dart';
import 'edit_profile_form.dart';
import 'edit_profile_image_section.dart';

class EditProflieBody extends StatelessWidget {
  const EditProflieBody({super.key});

  @override
  Widget build(BuildContext context) {
    final imageCubit = context.read<PickImageCubit>();
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      children: [
        verticalSpace(10),
        const EditImagesSection(),
        const EditProfileForm(),
        verticalSpace(50),
        AppButton(
          buttonText: 'Save',
          buttonHeight: 40,
          borderRadius: 8,
          onPressed: () {
            context.read<EditUserCubit>().validateThenDoEdit(
                  profileImage: imageCubit.selectImage,
                  coverImage: imageCubit.selectImage,
                );
          },
        ),
        const EditProfileBlocListener(),
      ],
    );
  }
}
