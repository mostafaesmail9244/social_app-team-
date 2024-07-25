import 'package:flutter/material.dart';
import 'package:social_app/features/comment/data/model/comment_response.dart';
import 'comment_item.dart';
import 'comment_loading.dart';

class CommentList extends StatelessWidget {
  final CommentsResponse? response;
  final bool isLoading;
  const CommentList({super.key, this.response, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: isLoading ? 10 : response!.comments!.length,
      itemBuilder: (context, index) {
        return isLoading
            ? const CommentLoading()
            : CommentItem(comment: response!.comments![index]);
      },
    );
  }
}
