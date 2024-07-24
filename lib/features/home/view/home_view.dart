import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '../../../core/widgets/build_app_bar.dart';
import 'widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'Home',
        isIcon: true,
        icon: IconlyLight.notification,
        onPressed: () {},
      ),
      body: const HomeBody(),
    );
  }
}
