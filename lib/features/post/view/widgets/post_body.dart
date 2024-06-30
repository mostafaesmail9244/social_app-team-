import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/spacing.dart';
import '../../../../core/cubits/pick_image_cubit/pick_image_cubit.dart';
import '../../view_model/add_post&palm_cubit/add_cubit.dart';
import 'add_post_bloc_listener.dart';
import 'add_post_text_field.dart';
import 'build_image_post.dart';
import 'image_and_name.dart';
import 'photo_tags_button.dart';

class PostBody extends StatelessWidget {
  const PostBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PickImageCubit>();
    return Column(
      children: [
        verticalSpace(10),
        const ImageAndName(),
        const AddPostTextField(),
        BuildImagePost(cubit: cubit),
        verticalSpace(25),
        PhotoTagsButton(cubit: cubit),
        const AddPostBlocListener(),
      ],
    );
  }
}
