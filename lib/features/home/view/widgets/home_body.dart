import 'package:flutter/material.dart';
import '../../../../core/helper/spacing.dart';
import 'get_posts_builder.dart';
import 'on_your_mind_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        const OnYourMindWidget(),
        verticalSpace(10),
        const GetPostsBuilder(),
        verticalSpace(10),
      ],
    );
  }
}
