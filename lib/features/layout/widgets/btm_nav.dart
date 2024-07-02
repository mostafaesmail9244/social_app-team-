import 'package:flutter/material.dart';

import '../../../core/style/app_colors.dart';
import '../view_model/layout_cubit/layout_cubit.dart';
import '../model/layout_model.dart';

class BtmNav extends StatelessWidget {
  const BtmNav({super.key, required this.cubit});

  final LayoutCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: AppColors.lightMainBlue,
      unselectedItemColor: AppColors.grey,
      showUnselectedLabels: true,
      elevation: 0,
      currentIndex: cubit.currentIndex,
      items: List.generate(
        iconsList.length,
        (index) => BottomNavigationBarItem(
          backgroundColor: Colors.white,
          activeIcon: activeIconsList[index],
          icon: iconsList[index],
          label: labels[index],
        ),
      ),
      onTap: (index) {
        cubit.changeBottomNavBar(index);
      },
    );
  }
}
