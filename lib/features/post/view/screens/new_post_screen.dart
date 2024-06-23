import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:social_app/core/components/components.dart';
import 'package:social_app/core/constants/constants.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/core/router/routes.dart';
import 'package:social_app/core/style/text_styles.dart';
import 'package:social_app/features/post/logic/cubit/post_cubit.dart';

class NewPostScreen extends StatefulWidget {
  const NewPostScreen({super.key});

  @override
  State<NewPostScreen> createState() => _NewPostScreenState();
}

class _NewPostScreenState extends State<NewPostScreen> {
  final postController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: Text(
            'Add Post',
            style: TextStyles.font24Black700,
          ),
          actions: [
            TextButton(
              onPressed: () {
                // DateTime now = DateTime.now();

                // // Format the date and time
                // String formattedDateTime =
                //     DateFormat("MMMM d, yyyy 'at' hh:mm a").format(now);
                // if (_formKey.currentState!.validate()) {
                //   if (context.read<PostCubit>().postFile != null) {
                //     context.read<PostCubit>().uploadPostWithImage(
                //           dateTime: formattedDateTime,
                //           post: postController.text,
                //         );
                //   } else {
                //     context.read<PostCubit>().uploadPostWithoutImage(
                //           dateTime: formattedDateTime,
                //           post: postController.text,
                //         );
                //   }
                // }
              },
              child: Text(
                'Post',
                style: TextStyles.font18Black.copyWith(color: Colors.blue),
              ),
            )
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: BlocConsumer<PostCubit, PostState>(
              listener: (context, state) {
                if (state is UploadPostSuccessState) {
                  context.pushNamedAndRemoveUntil(Routes.layoutScreen,
                      predicate: (Route<dynamic> route) => false);
                } else if (state is UploadPostErrorState) {
                  flutterToast(text: state.error, state: ToastEnum.error);
                }
              },
              builder: (context, state) {
                return BlocBuilder<PostCubit, PostState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: CircleAvatar(
                                radius: 25,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: FancyShimmerImage(
                                      imageUrl: Constants.profileImage),
                                ),
                              ),
                            ),
                            horizontalSpace(10),
                            Text(Constants.userModel.name!,
                                style: TextStyles.font18Black),
                          ],
                        ),
                        // verticalSpace(15),,
                        Expanded(
                          child: TextFormField(
                            controller: postController,
                            keyboardType: TextInputType.text,
                            maxLines: 20,
                            validator: (val) {
                              if (val!.isEmpty) {
                                flutterToast(
                                    text: 'Enter Post',
                                    state: ToastEnum.warning);
                                return '';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              hintText: 'What\'s on your mind ...',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        //add image here
                        if (context.read<PostCubit>().postFile != null)
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Container(
                                height: context.deviceHeight * .25,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Image.file(
                                  context.read<PostCubit>().postFile!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    context.read<PostCubit>().removeImage();
                                  },
                                  icon: const Icon(
                                    IconlyLight.closeSquare,
                                    color: Colors.red,
                                  ))
                            ],
                          ),
                        if (state is UploadPostLoadingState) verticalSpace(10),
                        if (state is UploadPostLoadingState)
                          const LinearProgressIndicator(),
                        verticalSpace(10),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextButton.icon(
                                onPressed: () {
                                  showImgaeDialog(
                                      context, context.read<PostCubit>());
                                },
                                icon: const Icon(
                                  IconlyLight.image,
                                  color: Colors.blue,
                                ),
                                label: Text(
                                  'add photo',
                                  style: TextStyles.font14BlueSemiBold,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  '# tags',
                                  style: TextStyles.font14BlueSemiBold,
                                ),
                              ),
                            ])
                      ],
                    );
                  },
                );
              },
            )),
      ),
    );
  }

  void showImgaeDialog(context, PostCubit cubit) async {
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          'Choose Image',
          style: TextStyles.font24Black700,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            verticalSpace(16),
            TextButton.icon(
                onPressed: () {
                  cubit.pickFromCamera();
                  context.pop();
                },
                icon: const Icon(IconlyBold.camera),
                label: const Text('Camera')),
            verticalSpace(10),
            TextButton.icon(
                onPressed: () {
                  cubit.pickFromGalary();
                  context.pop();
                },
                icon: const Icon(IconlyBold.image),
                label: const Text('Galary')),
            verticalSpace(10),
          ],
        ),
      ),
    );
  }
}
