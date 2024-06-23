import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:social_app/core/helper/spacing.dart';
import 'package:social_app/core/style/text_styles.dart';
import 'package:social_app/features/home/view/widgets/post_item.dart';
import 'package:social_app/features/post/logic/cubit/post_cubit.dart';
import 'package:social_app/features/post/models/post_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyles.font24Black700,
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(IconlyLight.notification)),
          IconButton(onPressed: () {}, icon: const Icon(IconlyLight.search)),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
          // add refresh indicator 
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  elevation: 10,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: FancyShimmerImage(
                    imageUrl:
                        'https://img.freepik.com/premium-photo/nighttime-reflections-lofi-manga-wallpaper-sad-beautiful-scene-with-cityscape_442337-37827.jpg?w=740',
                    height: 200,
                    boxFit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                verticalSpace(10),
                ListView.separated(
                    itemBuilder: (context, index) => PostItem(
                          postModel: posts[index],
                        ),
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => verticalSpace(10),
                    shrinkWrap: true,
                    itemCount: posts.length),
              ],
            ),
          )),
    );
  }
}

List<PostModel> posts = [
  PostModel(
    uId: '1',
    name: 'Alice Smith',
    profileImage:
        'https://img.freepik.com/premium-photo/nighttime-reflections-lofi-manga-wallpaper-sad-beautiful-scene-with-cityscape_442337-37827.jpg?w=740',
    date: '2024-06-20',
    image:
        'https://img.freepik.com/premium-photo/nighttime-reflections-lofi-manga-wallpaper-sad-beautiful-scene-with-cityscape_442337-37827.jpg?w=740',
    post: 'Exploring the beauty of the night city.',
  ),
  PostModel(
    uId: '2',
    name: 'Bob Johnson',
    profileImage:
        'https://img.freepik.com/premium-photo/nighttime-reflections-lofi-manga-wallpaper-sad-beautiful-scene-with-cityscape_442337-37827.jpg?w=740',
    date: '2024-06-21',
    image:
        'https://img.freepik.com/premium-photo/nighttime-reflections-lofi-manga-wallpaper-sad-beautiful-scene-with-cityscape_442337-37827.jpg?w=740',
    post: 'Lofi vibes with the cityscape.',
  ),
  PostModel(
    uId: '3',
    name: 'Charlie Davis',
    profileImage:
        'https://img.freepik.com/premium-photo/nighttime-reflections-lofi-manga-wallpaper-sad-beautiful-scene-with-cityscape_442337-37827.jpg?w=740',
    date: '2024-06-22',
    image:
        'https://img.freepik.com/premium-photo/nighttime-reflections-lofi-manga-wallpaper-sad-beautiful-scene-with-cityscape_442337-37827.jpg?w=740',
    post: 'A sad yet beautiful night in the city.',
  ),
  PostModel(
    uId: '4',
    name: 'Diana Williams',
    profileImage:
        'https://img.freepik.com/premium-photo/nighttime-reflections-lofi-manga-wallpaper-sad-beautiful-scene-with-cityscape_442337-37827.jpg?w=740',
    date: '2024-06-23',
    image:
        'https://img.freepik.com/premium-photo/nighttime-reflections-lofi-manga-wallpaper-sad-beautiful-scene-with-cityscape_442337-37827.jpg?w=740',
    post: 'Capturing nighttime reflections.',
  ),
  PostModel(
    uId: '5',
    name: 'Ethan Brown',
    profileImage:
        'https://img.freepik.com/premium-photo/nighttime-reflections-lofi-manga-wallpaper-sad-beautiful-scene-with-cityscape_442337-37827.jpg?w=740',
    date: '2024-06-24',
    image:
        'https://img.freepik.com/premium-photo/nighttime-reflections-lofi-manga-wallpaper-sad-beautiful-scene-with-cityscape_442337-37827.jpg?w=740',
    post: 'Feeling the melancholy of a city night.',
  ),
];
