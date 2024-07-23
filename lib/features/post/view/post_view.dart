import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/cubits/pick_image_cubit/pick_image_cubit.dart';
import '../../../core/widgets/build_app_bar.dart';
import '../view_model/add_post_cubit/add_cubit.dart';
import 'widgets/post_body.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PickImageCubit>();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: buildAppBar(
        context,
        title: 'Add Post',
        leading: 'Post',
        onPressed: () {
          context
              .read<AddPostCubit>()
              .validateThenDoAddPost(image: cubit.selectPostImage);
        },
      ),
      body: PostBody(cubit: cubit),
    );
  }
}
