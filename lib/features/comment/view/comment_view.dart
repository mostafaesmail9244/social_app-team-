import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/style/text_styles.dart';
import '../view_model/comment_cubit/comment_cubit.dart';
import 'widgets/text_filed_and_icon.dart';
import 'widgets/comment_body.dart';

class CommentView extends StatelessWidget {
  final String postID;
  const CommentView({super.key, required this.postID});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CommentCubit>();
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            "Comments",
            style: AppTextStyles.font24SemiBoldBlue.copyWith(fontSize: 20),
          ),
          const SizedBox(height: 5),
          const Expanded(child: CommentBody()),
          TextFiledAndIcon(cubit: cubit, postID: postID),
        ],
      ),
    );
  }
}
