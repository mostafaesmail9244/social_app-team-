import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/router/routes.dart';
import 'package:social_app/features/layout/logic/layout_cubit/layout_cubit.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit, LayoutState>(
      listener: (context, state) {
        if (state is NavigatToPostScreen) {
          context.pushNamed(Routes.addPostScreen);
        }
      },
      builder: (context, state) {
        return BlocBuilder<LayoutCubit, LayoutState>(
          builder: (context, state) {
            return Scaffold(
              body: context
                  .read<LayoutCubit>()
                  .screens[context.read<LayoutCubit>().currentIndex],
              bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: Colors.blue,
                onTap: (value) {
                  context.read<LayoutCubit>().changeBottomNavBar(value);
                },
                currentIndex: context.read<LayoutCubit>().currentIndex,
                type: BottomNavigationBarType.fixed,
                items: context.read<LayoutCubit>().navBarItems,
              ),
            );
          },
        );
      },
    );
  }
}
