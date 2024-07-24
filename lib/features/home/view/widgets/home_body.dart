import 'package:flutter/material.dart';
import '../../../../core/helper/spacing.dart';
import '../../data/model/posts_response.dart';
import 'on_your_mind_widget.dart';
import 'posts_builder.dart';

class HomeBody extends StatelessWidget {
  final bool loading;
  final List<PostsData>? posts;
  const HomeBody({super.key, required this.loading, this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        const OnYourMindWidget(),
        verticalSpace(10),
        PostsBuilder(isLoading: loading, posts: posts),
        verticalSpace(10),
      ],
    );
  }
}
