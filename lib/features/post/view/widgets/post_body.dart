import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/core/widgets/app_text_filed.dart';
import '../../../../core/cubits/pick_image_cubit/pick_image_cubit.dart';
import '../../view_model/add_post&palm_cubit/add_cubit.dart';
import 'add_post_bloc_listener.dart';
import 'build_image_post.dart';
import 'image_and_name.dart';
import 'photo_tags_button.dart';

class PostBody extends StatelessWidget {
  const PostBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PickImageCubit>();
    return Form(
      key: context.read<AddPostCubit>().formKey,
      child: Column(
        children: [
          verticalSpace(10),
          const ImageAndName(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: AppTextFormFiled(
                hintText: 'What\'s on your mind .....',
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return "Please enter a valid  title";
                  }
                },
                keyboardType: TextInputType.multiline,
                maxLines: 10,
                controller: context.read<AddPostCubit>().contentController,
                focusedBorder:
                    const OutlineInputBorder(borderSide: BorderSide.none),
                enabledBorder:
                    const OutlineInputBorder(borderSide: BorderSide.none),
                    
              ),
            ),
          ),
          BuildImagePost(cubit: cubit),
          verticalSpace(25),
          PhotoTagsButton(cubit: cubit),
          const AddPostBlocListener(),
        ],
      ),
    );
  }
}
