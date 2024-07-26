import 'package:flutter/material.dart';
import '../../helper/app_regex.dart';
import '../../helper/spacing.dart';
import 'app_text_filed.dart';
import 'password_validations.dart';

class PasswordAndValidation extends StatefulWidget {
  const PasswordAndValidation({super.key, required this.controller});
  final TextEditingController controller;
  @override
  State<PasswordAndValidation> createState() => _PasswordAndValidationsState();
}

class _PasswordAndValidationsState extends State<PasswordAndValidation> {
  bool isObscureText = true;
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  late final TextEditingController passwordController;

  @override
  void initState() {
    passwordController = widget.controller;
    setupPasswordControllerListener();
    super.initState();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormFiled(
          keyboardType: TextInputType.visiblePassword,
          validator: (val) {
            if (val == null || val.isEmpty ) {
              return "Please enter a valid password";
            }
          },
          controller: widget.controller,
          hintText: "Password",
          isObscureText: isObscureText,
          prefixIcon: const Icon(Icons.lock_outline_rounded),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                isObscureText = !isObscureText;
              });
            },
            child:
                Icon(isObscureText ? Icons.visibility_off : Icons.visibility),
          ),
        ),
        verticalSpace(24),
        PasswordValidations(
          hasLowerCase: hasLowercase,
          hasUpperCase: hasUppercase,
          hasSpecialCharacters: hasSpecialCharacters,
          hasMinLength: hasMinLength,
          hasNumber: hasNumber,
        ),
      ],
    );
  }
}
