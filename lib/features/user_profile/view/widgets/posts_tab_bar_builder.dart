import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/widgets/custom_cached_image.dart';
import 'package:social_app/core/widgets/custom_shimmer.dart';

import '../../view_model/get_other_user_cubit/get_other_user_cubit.dart';
import '../../view_model/get_other_user_cubit/get_other_user_states.dart';

class PostsTabBarBuilder extends StatelessWidget {
  const PostsTabBarBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetOtherUserPostsCubit, GetOtherUserPostsStates>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          getUserLoading: () => const CustomShimmer(
            height: 20,
            width: 20,
            radius: 5,
          ),
          getUserError: (mess) => const CustomShimmer(
            height: 20,
            width: 20,
            radius: 5,
          ),
          getUserSuccess: (data) => GridView.builder(
            shrinkWrap: true,
            itemCount: data.posts!.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 3, crossAxisSpacing: 3, crossAxisCount: 3),
            itemBuilder: (context, index) {
              var item = data.posts![index];
              return CustomCachedNetworkImage(
                imageUrl: item.image!,
                height: 200,
                width: 200,
                radius: 6,
              );

              // Container(
              //   padding: const EdgeInsets.all(10),
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(6),
              //       image: DecorationImage(
              //           fit: BoxFit.fill,
              //           image: NetworkImage(item['postImage']))),
              // );
            },
          ),
        );
      },
    );
  }
}
