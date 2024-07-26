import 'package:flutter/material.dart';
import '../../../../core/shared/widgets/custom_cached_image.dart';
import '../../../../core/shared/widgets/custom_shimmer.dart';
import '../../../home/data/model/posts_response.dart';

class PostUserGridView extends StatelessWidget {
  final PostsResponse? data;
  final bool isLoading;
  const PostUserGridView({super.key, this.data, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: isLoading ? 9 : data!.posts!.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 3,
        crossAxisSpacing: 3,
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) {
        return isLoading
            ? const CustomShimmer(
                height: 200,
                width: 200,
                radius: 6,
              )
            : CustomCachedNetworkImage(
                imageUrl: data!.posts![index].image!,
                height: 200,
                width: 200,
                radius: 6,
              );
      },
    );
  }
}
