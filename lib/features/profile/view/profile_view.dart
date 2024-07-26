import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/shared/widgets/build_app_bar.dart';
import '../view_model/get_user_cubit/get_user_cubit.dart';
import '../view_model/get_user_cubit/get_user_states.dart';
import 'widgets/get_profile_loading.dart';
import 'widgets/profile_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'Profile'),
      body: BlocBuilder<GetUserCubit, GetUserStates>(
        builder: (context, state) {
          return state.when(
            initial: SizedBox.shrink,
            getUserLoading: () => const GetProfileLoading(),
            getUserError: (error) => const GetProfileLoading(),
            getUserSuccess: (data) => ProfileBody(data: data),
          );
        },
      ),
    );
  }
}
