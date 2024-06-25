import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/features/profile/view_model/edit_user_cubit/edit_profile_cubit.dart';
import '../../../../../core/helper/spacing.dart';
import '../../../../../core/widgets/app_button.dart';
import '../../../view_model/pick_image_cubit/pick_image_cubit.dart';
import 'edit_profile_bloc_listener.dart';
import 'edit_profile_form.dart';
import 'edit_profile_image_section.dart';

class EditProflieBody extends StatelessWidget {
  const EditProflieBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      children: [
        verticalSpace(20),
        const EditImagesSection(),
        const EditProfileForm(),
        verticalSpace(50),
        AppButton(
          buttonText: 'Save',
          buttonHeight: 35,
          borderRadius: 6,
          onPressed: () {
            context.read<EditUserCubit>().validateThenDoEdit(
                  profileImage:
                      context.read<PickImageProfileCubit>().selectProfileImage,
                  coverImage:
                      context.read<PickImageProfileCubit>().selectCoverImage,
                );
          },
        ),
        const EditProfileBlocListener(),
      ],
    );
  }
}
