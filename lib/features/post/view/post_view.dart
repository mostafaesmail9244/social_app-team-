import 'package:flutter/material.dart';
import 'widgets/post_app_bar.dart';
import 'widgets/post_body.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: postAppBar(context),
      body: const PostBody(),
    );
  }
}
