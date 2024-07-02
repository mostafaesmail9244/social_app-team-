import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/cubits/pick_image_cubit/pick_image_cubit.dart';
import '../../../core/d_injection/injection.dart';
import '../view_model/add_post&palm_cubit/add_cubit.dart';
import 'widgets/post_app_bar.dart';
import 'widgets/post_body.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<PickImageCubit>()),
        BlocProvider(create: (context) => getIt<AddPostCubit>()),
      ],
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: postAppBar(context),
        body: const PostBody(),
      ),
    );
  }
}
