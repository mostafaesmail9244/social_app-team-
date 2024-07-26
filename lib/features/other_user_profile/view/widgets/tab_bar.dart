import 'package:flutter/material.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'photo_tab_bar_builder.dart';
import 'posts_tab_bar_builder.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(text: "Photos"),
              Tab(text: "Posts"),
            ],
          ),
          verticalSpace(10),
          const Expanded(
            child: TabBarView(
              children: [
                PhotoTabBarBuilder(),
                PostsTabBarBuilder(),
              ],
            ),
          ),
          verticalSpace(10),
        ],
      ),
    );
  }
}
