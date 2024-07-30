import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/shared/pick_image_cubit/pick_image_cubit.dart';
import 'buttom_image_part.dart';
import 'upper_image_part.dart';

class EditImagesSection extends StatelessWidget {
  const EditImagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final cubit = context.read<PickImageCubit>();
    return SizedBox(
      height: size.height * .36,
      child: Stack(
        children: [
          UpperImagePart(cubit: cubit, size: size),
          LowerPart(cubit: cubit, size: size),
        ],
      ),
    );
  }
}
