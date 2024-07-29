import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/features/home/view_model/get_posts_cubit/get_posts_cubit.dart';
import 'package:social_app/features/add_post/view_model/add_post_cubit/add_cubit.dart';
import '../../../../core/shared/pick_image_cubit/pick_image_cubit.dart';
import '../../../../core/shared/widgets/custom_error.dart';
import '../../../../core/shared/widgets/custom_loading.dart';
import '../../../../core/shared/widgets/custom_success.dart';
import '../../view_model/add_post_cubit/add_states.dart';

class AddPostBlocListener extends StatelessWidget {
  const AddPostBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddPostCubit, AddPostStates>(
      listenWhen: (prv, cur) =>
          cur is AddLoading || cur is AddSuccess || cur is AddError,
      listener: (context, state) {
        state.whenOrNull(addLoading: () {
          customLoading(context);
        }, addError: (error) {
          context.pop();
          customErrorWidget(context, error);
        }, addSuccess: (data) {
          // context.read<GetPostsCubit>().emitGetPosts();
          customSuccessWidget(context, 'Added Successfully', 'close it', () {
            context.read<GetPostsCubit>().emitGetPostsData();
            context.read<PickImageCubit>().removeImage();
            context.pop();
            context.pop();
            Future.delayed(const Duration(milliseconds: 100), () {
              context.read<AddPostCubit>().focusNode.unfocus();
            });
          });
        });
      },
      child: const SizedBox.shrink(),
    );
  }
}
