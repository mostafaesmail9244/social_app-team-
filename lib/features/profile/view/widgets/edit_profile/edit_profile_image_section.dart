import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/helper/extentaion.dart';
import '../../../view_model/pick_image_cubit/pick_image_cubit.dart';
import 'buttom_image_part.dart';
import 'upper_image_part.dart';

class EditImagesSection extends StatelessWidget {
  const EditImagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PickImageProfileCubit>();
    return SizedBox(
      height: context.deviceHeight * .33,
      child: Stack(
        children: [
          UpperImagePart(cubit: cubit),
          LowerPart(cubit: cubit),
        ],
      ),
    );
  }
}

