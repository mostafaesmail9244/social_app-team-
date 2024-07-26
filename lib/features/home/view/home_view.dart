import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:social_app/core/d_injection/injection.dart';
import '../../../core/shared/widgets/build_app_bar.dart';
import '../view_model/like_commen_cubit/like_commen_cubit.dart';
import 'widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LikeCommentCubit>(),
      child: Scaffold(
        appBar: buildAppBar(
          context,
          title: 'Home',
          isIcon: true,
          icon: IconlyLight.notification,
        ),
        body: const HomeBody(),
      ),
    );
  }
}
