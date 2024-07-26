import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/shared/pick_image_cubit/pick_image_cubit.dart';
import '../../../core/shared/widgets/build_app_bar.dart';
import '../view_model/add_post_cubit/add_cubit.dart';
import 'widgets/add_post_body.dart';

class AddPostView extends StatelessWidget {
  const AddPostView({super.key});

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
      body: AddPostBody(cubit: cubit),
    );
  }
}
