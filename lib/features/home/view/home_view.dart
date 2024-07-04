import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:social_app/core/style/text_styles.dart';
import 'view_model/get_posts_cubit/get_posts_cubit.dart';
import 'view_model/get_posts_cubit/get_posts_states.dart';
import 'widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: AppTextStyles.font24BlueBold),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(IconlyLight.notification),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
      ),
      body:
          BlocBuilder<GetPostsCubit, GetPostsStates>(builder: (context, state) {
        return state.when(
          initial: SizedBox.shrink,
          getPostsLoading: () => const HomeBody(loading: true),
          getPostsError: (error) => const HomeBody(loading: true),
          getPostsSuccess: (data) => HomeBody(
            loading: false,
            posts: data.posts,
          ),
        );
      }),
    );
  }
}
