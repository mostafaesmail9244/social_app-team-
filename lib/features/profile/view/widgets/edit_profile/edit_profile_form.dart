import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/spacing.dart';
import '../../../../../core/helper/app_regex.dart';
import '../../../../../core/shared/widgets/app_text_filed.dart';
import '../../../view_model/edit_user_cubit/edit_profile_cubit.dart';

class EditProfileForm extends StatelessWidget {
  const EditProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<EditUserCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
          verticalSpace(30),
          AppTextFormFiled(
            hintText: "First Name",
            validator: (val) {
              if (val == null || val.isEmpty) {
                return "Please enter a valid  Name";
              }
            },
            controller: cubit.nameController,
            keyboardType: TextInputType.name,
          ),
          verticalSpace(10),
          AppTextFormFiled(
            hintText: "Bio",
            validator: (val) {
              if (val == null || val.isEmpty) {
                return "Please enter a valid  Bio";
              }
            },
            controller: cubit.bio,
            keyboardType: TextInputType.name,
          ),
          verticalSpace(10),
          AppTextFormFiled(
            hintText: "Phone",
            validator: (val) {
              if (val == null ||
                  val.isEmpty ||
                  !AppRegex.isPhoneNumberValid(val)) {
                return "Please enter a valid phone";
              }
            },
            controller: cubit.phoneController,
            keyboardType: TextInputType.phone,
          )
        ],
      ),
    );
  }
}
