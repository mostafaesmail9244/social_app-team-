import 'package:flutter/material.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/features/add_post/view/widgets/add_post_text_field.dart';
import 'package:social_app/features/add_post/view/widgets/build_image_post.dart';
import '../../../../core/shared/pick_image_cubit/pick_image_cubit.dart';
import 'add_post_bloc_listener.dart';
import 'image_and_name.dart';
import 'photo_tags_button.dart';

class AddPostBody extends StatelessWidget {
  final PickImageCubit cubit;
  const AddPostBody({super.key, required this.cubit});

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
