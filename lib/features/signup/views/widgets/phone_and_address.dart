import 'package:flutter/material.dart';
import '../../../../core/helper/app_regex.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/app_text_filed.dart';
import '../../view_model/signup_cubit/signup_cubit.dart';

class PhoneAndAddress extends StatelessWidget {
  const PhoneAndAddress({super.key, required this.cubit});
  final SignupCubit cubit;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(16),
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
            keyboardType: TextInputType.phone),
        verticalSpace(16),
        AppTextFormFiled(
            hintText: "Address",
            validator: (val) {
              if (val == null || val.isEmpty) {
                return "Please enter a valid Address";
              }
            },
            controller: cubit.addressController,
            keyboardType: TextInputType.streetAddress),
        verticalSpace(16)
      ],
    );
  }
}
