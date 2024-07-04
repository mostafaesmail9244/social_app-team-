import 'package:flutter/material.dart';
import '../../../core/widgets/build_app_bar.dart';
import 'widgets/post_body.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: buildAppBar(
        context,
        title: 'Add Post',
        leading: 'Post',
        onPressed: () {},
      ),
      body: const PostBody(),
    );
  }
}
