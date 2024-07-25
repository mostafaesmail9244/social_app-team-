import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        body: SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 10),
          const Expanded(child: CommentBody()),
          TextFiledAndIcon(cubit: cubit, postID: postID),
        ],
      ),
    ));
  }
}
