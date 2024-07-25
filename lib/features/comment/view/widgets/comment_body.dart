import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/features/comment/view_model/comment_cubit/comment_cubit.dart';
import 'package:social_app/features/comment/view_model/comment_cubit/comment_states.dart';
import 'comment_list.dart';

class CommentBody extends StatelessWidget {
  const CommentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentCubit, CommentStates>(
      buildWhen: (previous, current) =>
          current is GetCommentError ||
          current is GetCommentLoading ||
          current is GetCommentSuccess,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          getCommentError: (err) => const CommentList(isLoading: true),
          getCommentLoading: () => const CommentList(isLoading: true),
          getCommentSuccess: (data) =>
              CommentList(response: data, isLoading: false),
        );
      },
    );
  }
}
