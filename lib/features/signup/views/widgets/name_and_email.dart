import 'package:flutter/material.dart';
import '../../../../core/helper/app_regex.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/app_text_filed.dart';
import '../../view_model/signup_cubit/signup_cubit.dart';

class NameAndEmail extends StatelessWidget {
  const NameAndEmail({super.key, required this.cubit});
  final SignupCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: AppTextFormFiled(
              hintText: "First Name",
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return "Please enter a valid  fName";
                }
              },
              controller: cubit.fNameController,
              keyboardType: TextInputType.name,
            )),
            horizontalSpace(10),
            Expanded(
                child: AppTextFormFiled(
              hintText: "Last Name",
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return "Please enter a valid  lName";
                }
              },
              controller: cubit.lNameController,
              keyboardType: TextInputType.name,
            )),
          ],
        ),
        verticalSpace(16),
        AppTextFormFiled(
          hintText: "Email",
          validator: (val) {
            if (val == null || val.isEmpty || !AppRegex.isEmailValid(val)) {
              return "Please enter a valid  Email";
            }
          },
          controller: cubit.emailController,
          keyboardType: TextInputType.emailAddress,
        ),
      ],
    );
  }
}
