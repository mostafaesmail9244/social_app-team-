import 'package:flutter/material.dart';
import '../../../core/widgets/app_text_filed.dart';
import '../../../core/widgets/icon_button_filled.dart';
import '../view_model/comment_cubit/comment_cubit.dart';

class TextFiledAndIcon extends StatelessWidget {
  final CommentCubit cubit;
  final String postID;
  const TextFiledAndIcon({
    super.key,
    required this.cubit,
    required this.postID,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: AppTextFormFiled(
              contentPadding: const EdgeInsets.all(15),
              filled: true,
              fillColor: Colors.grey.withOpacity(0.05),
              borderRadius: 8,
              hintText: 'Enter your comment ....',
              // focusNode: cubit.focusNode,
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return "Please enter a valid title";
                }
              },
              keyboardType: TextInputType.text,
              controller: cubit.tittleController,
      
            ),
          ),
          CustomIconFilled(
            isComment: true,
            onPressed: () {
              cubit.emitToAddComment(postID);
            },
            icon: Icons.send_rounded,
          ),
        ],
      ),
    );
  }
}
