import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '../../../core/widgets/build_app_bar.dart';
import '../view_model/get_posts_cubit/get_posts_cubit.dart';
import '../view_model/get_posts_cubit/get_posts_states.dart';
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
      body:
          BlocBuilder<GetPostsCubit, GetPostsStates>(builder: (context, state) {
        return state.when(
          initial: SizedBox.shrink,
          getPostsLoading: () => const HomeBody(loading: true),
          getPostsError: (error) => const HomeBody(loading: true),
          getPostsSuccess: (data) => RefreshIndicator(
            onRefresh: () async {
              context.read<GetPostsCubit>().emitGetPosts();
            },
            child: HomeBody(
              loading: false,
              posts: data.posts,
            ),
          ),
        );
      }),
    );
  }
}
