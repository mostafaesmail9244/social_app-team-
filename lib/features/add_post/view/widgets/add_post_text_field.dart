import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/features/add_post/view_model/add_post_cubit/add_states.dart';
import '../../../../core/shared/widgets/app_text_filed.dart';
import '../../view_model/add_post_cubit/add_cubit.dart';

class AddPostTextField extends StatelessWidget {
  const AddPostTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AddPostCubit>();
    return BlocBuilder<AddPostCubit, AddPostStates>(
      //  buildWhen: (previous, current) => current is Validate,
      builder: (context, state) {
        return Form(
          key: cubit.formKey,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: AppTextFormFiled(
              hintText: 'What\'s on your mind.....',
              focusNode: cubit.focusNode,
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return "Please enter a valid title";
                }
              },
              keyboardType: TextInputType.multiline,
              maxLines: 15,
              controller: cubit.contentController,
              focusedBorder:
                  const OutlineInputBorder(borderSide: BorderSide.none),
              enabledBorder:
                  const OutlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        );
      },
    );
  }
}
