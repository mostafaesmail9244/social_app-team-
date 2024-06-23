import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/core/components/components.dart';
import 'package:social_app/core/helper/app_regex.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/core/router/routes.dart';
import 'package:social_app/features/auth/presentation/logic/social_auth/auth_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is SocialLoginErrorState) {
              flutterToast(text: state.error, state: ToastEnum.error);
            } else if (state is SocialLoginSuccessState) {
              context.pushReplacmentNamed(Routes.layoutScreen);
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
                      'LOGIN',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    verticalSpace(15),
                    Text(
                      'login now to browse our hot offers',
                      style: TextStyle(fontSize: 19, color: Colors.grey[700]),
                    ),
                    verticalSpace(30),
                    defaultTextFormFeild(
                        controller: emailController,
                        type: TextInputType.emailAddress,
                        autofillHints: [AutofillHints.email],
                        validator: (val) {
                          if (val == null ||
                              val.isEmpty ||
                              !AppRegex.isEmailValid(val)) {
                            return "Please enter a valid email";
                          }
                          return null;
                        },
                        // onTap: () {},
                        label: const Text('Email Addresse'),
                        prefixIcon: Icons.email_outlined),
                    verticalSpace(15),
                    defaultTextFormFeild(
                        controller: passwordController,
                        type: TextInputType.text,
                        obscureText: isObscure,
                        validator: (value) {
                          if (value!.isEmpty || value.length < 8) {
                            return "password is too short";
                          }
                          return null;
                        },
                        label: const Text('Password'),
                        prefixIcon: Icons.lock_outline,
                        suffixTap: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        suffixIcon: isObscure
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined),
                    verticalSpace(30),
                    BlocBuilder<AuthCubit, AuthState>(
                      builder: (context, state) {
                        return ConditionalBuilder(
                          condition: state is! SocialLoginLoadingState,
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
                                  // loginMethod(
                                  //   formKey,
                                  //   emailController,
                                  //   passwordController,
                                  //   context,
                                  // );
                                  if (formKey.currentState!.validate()) {
                                    context.read<AuthCubit>().userLogin(
                                        email: emailController.text,
                                        password: passwordController.text);
                                  }
                                },
                                child: const Text(
                                  'Login',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account ?',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        verticalSpace(20),
                        defaultTextButton(
                            text: 'register',
                            onPressed: () {
                              context.pushNamed(Routes.registerScreen);
                            })
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void snackBar(BuildContext context, {required String text}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  void loginMethod(
      GlobalKey<FormState> formKey,
      TextEditingController emailController,
      TextEditingController passwordController,
      BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<AuthCubit>().userLogin(
          email: emailController.text, password: passwordController.text);
    }
  }
}
