import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helper/spacing.dart';
import '../../../personal_profile/view/widgets/profile_image_section.dart';
import '../../../personal_profile/view_model/get_user_cubit/get_user_cubit.dart';
import '../../../personal_profile/view_model/get_user_cubit/get_user_states.dart';
import '../../data/model/chat_args.dart';
import 'profiole_loading.dart';
import 'tab_bar.dart';
import 'text_section.dart';
import 'user_info_follow.dart';

class OtherUserProfileBody extends StatelessWidget {
  final ChatArgs data;
  const OtherUserProfileBody({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverToBoxAdapter(
            child: Column(
              children: [
                data.isSearch
                    ? Column(
                        children: [
                          ProfileImagesSection(data: data.userData!),
                          UserInfoAndFollow(data: data.userData!),
                        ],
                      )
                    : BlocBuilder<GetUserCubit, GetUserStates>(
                        builder: (context, state) {
                          return state.when(
                            initial: () => const SizedBox.shrink(),
                            getUserLoading: () => const ProfioleLoading(),
                            getUserError: (_) => const ProfioleLoading(),
                            getUserSuccess: (data) => Column(
                              children: [
                                ProfileImagesSection(data: data),
                                UserInfoAndFollow(data: data),
                              ],
                            ),
                          );
                        },
                      ),
                verticalSpace(20),
                const TextSection(),
                verticalSpace(10),
              ],
            ),
          ),
        ];
      },
      body: const TabBarDemo(),
    );
  }
}
