import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/features/post/view/widgets/add_post_text_field.dart';
import 'package:social_app/features/post/view/widgets/build_image_post.dart';
import '../../../../core/cubits/pick_image_cubit/pick_image_cubit.dart';
import 'add_post_bloc_listener.dart';
import 'image_and_name.dart';
import 'photo_tags_button.dart';

class PostBody extends StatelessWidget {
  const PostBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PickImageCubit>();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      verticalSpace(10),
                      const ImageAndName(),
                      const AddPostTextField(),
                      BuildImagePost(cubit: cubit),
                      verticalSpace(25),
                    ],
                  ),
                ),
              ),
            ),
            PhotoTagsButton(cubit: cubit),
            const Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: AddPostBlocListener(),
            ),
          ],
        ),
      ),
    );
  }
}
