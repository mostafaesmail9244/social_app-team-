import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/features/layout/view_model/layout_cubit/layout_cubit.dart';
import 'model/layout_model.dart';
import 'widgets/btm_nav.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        final cubit = context.read<LayoutCubit>();
        return Scaffold(
          body: screensList[cubit.currentIndex],
          bottomNavigationBar: BtmNav(cubit: cubit),
        );
      },
    );
  }
}
