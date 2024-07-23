import 'package:flutter/material.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/features/post/view/widgets/add_post_text_field.dart';
import 'package:social_app/features/post/view/widgets/build_image_post.dart';
import '../../../../core/cubits/pick_image_cubit/pick_image_cubit.dart';
import 'add_post_bloc_listener.dart';
import 'image_and_name.dart';
import 'photo_tags_button.dart';

class PostBody extends StatelessWidget {
  final PickImageCubit cubit;
  const PostBody({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(10),
        const ImageAndName(),
        Expanded(
          child: ListView(
            children: [
              const AddPostTextField(),
              BuildImagePost(cubit: cubit),
              verticalSpace(20),
            ],
          ),
        ),
        PhotoTagsButton(cubit: cubit),
        const AddPostBlocListener(),
      ],
    );
  }
}
