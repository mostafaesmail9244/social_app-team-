import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/features/comment/view/comment_view.dart';

import '../../../core/d_injection/injection.dart';
import '../view_model/comment_cubit/comment_cubit.dart';

void showCommentsPost(BuildContext context, String postId) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) => BlocProvider(
      create: (context) =>
          getIt<CommentCubit>()..emitToGetComment(postId: postId),
      child: CommentView(postID: postId),
    ),
  );
}
