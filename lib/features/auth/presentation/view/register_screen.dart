import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/core/components/components.dart';
import 'package:social_app/core/helper/app_regex.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/features/auth/presentation/logic/social_auth/auth_cubit.dart';
import 'package:social_app/features/auth/presentation/view/widgets/image_section.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  bool isObscure = true;
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _phoneFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Form(
        key: formKey,
        child: BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is CreateUserErrorState) {
              flutterToast(text: state.error, state: ToastEnum.error);
            } else if (state is CrateUserSuccessState) {
              flutterToast(text: 'user created', state: ToastEnum.success);
            }
          },
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'REGISTER',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    verticalSpace(20),
                    const ImageSection(),
                    verticalSpace(15),
                    defaultTextFormFeild(
                      controller: nameController,
                      type: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      focusNode: _nameFocusNode,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "name is required";
                        }
                        return null;
                      },
                      prefixIcon: Icons.person,
                      autofillHints: [AutofillHints.name],
                      label: const Text('name'),
                    ),
                    verticalSpace(15),
                    defaultTextFormFeild(
                      controller: phoneController,
                      type: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      focusNode: _phoneFocusNode,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !AppRegex.isPhoneNumberValid(value)) {
                          return "Please enter a valid phone number";
                        }
                        return null;
                      },
                      autofillHints: [AutofillHints.telephoneNumber],
                      label: const Text('phone'),
                      prefixIcon: Icons.phone,
                    ),
                    verticalSpace(15),
                    defaultTextFormFeild(
                        controller: emailController,
                        type: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              !AppRegex.isEmailValid(value)) {
                            return "please enter valid email";
                          }
                          return null;
                        },
                        autofillHints: [AutofillHints.email],
                        textInputAction: TextInputAction.next,
                        focusNode: _emailFocusNode,
                        label: const Text('Email Addresse'),
                        prefixIcon: Icons.email_outlined),
                    verticalSpace(15),
                    defaultTextFormFeild(
                      controller: passwordController,
                      type: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty || value.length < 8) {
                          return "password is too short";
                        }
                        return null;
                      },
                      textInputAction: TextInputAction.done,
                      focusNode: _passwordFocusNode,
                      suffixTap: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      obscureText: isObscure,
                      label: const Text('Password'),
                      prefixIcon: Icons.lock_outline,
                      suffixIcon: isObscure
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                    ),
                    verticalSpace(30),
                    BlocBuilder<AuthCubit, AuthState>(
                      builder: (context, state) {
                        return ConditionalBuilder(
                          condition: state is! SocialRegisterLoadingState,
                          builder: (context) => Center(
                            child: SizedBox(
                              width: context.deviceWidth * .8,
                              height: 50.h,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  backgroundColor: Colors.blue,
                                ),
                                onPressed: () {
                                  registerMethod(
                                      formKey,
                                      context,
                                      nameController,
                                      passwordController,
                                      emailController,
                                      phoneController);
                                },
                                child: const Text(
                                  'Register',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          fallback: (context) =>
                              const Center(child: CircularProgressIndicator()),
                        );
                      },
                    ),
                    verticalSpace(15),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void registerMethod(
      GlobalKey<FormState> formKey,
      BuildContext context,
      TextEditingController nameController,
      TextEditingController passwordController,
      TextEditingController emailController,
      TextEditingController phoneController) {
    if (formKey.currentState!.validate()) {
      if (context.read<AuthCubit>().imageFile == null) {
        flutterToast(text: 'image is required', state: ToastEnum.error);
      } else {
        context.read<AuthCubit>().register(
            name: nameController.text,
            password: passwordController.text,
            email: emailController.text,
            phone: phoneController.text);
      }
    }
  }
}
