// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_iconly/flutter_iconly.dart';
// import 'package:social_app/core/widgets/image_picker_widget.dart';
// import 'package:social_app/core/helper/extentaion.dart';
// import 'package:social_app/core/helper/spacing.dart';
// import 'package:social_app/core/style/text_styles.dart';
// import 'package:social_app/features/login/presentation/logic/social_auth/auth_cubit.dart';

// class ImageSection extends StatelessWidget {
//   const ImageSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var cubit = context.read<AuthCubit>();
//     return BlocBuilder<AuthCubit, AuthState>(
//       builder: (cxt, state) {
//         return ImagePickerWidget(
//           onTap: () {
//             showImgaeDialog(cxt, cubit);
//           },
//           xFile: context.read<AuthCubit>().imageFile,
//         );
//       },
//     );
//   }

//   void showImgaeDialog(context, AuthCubit cubit) async {
//     await showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//         backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//         title: Text(
//           'Choose Image',
//           style: AppTextStyles.font24Black700,
//         ),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             verticalSpace(16),
//             TextButton.icon(
//                 onPressed: () {
//                   cubit.pickFromCamera();
//                   context.pop();
//                 },
//                 icon: const Icon(IconlyBold.camera),
//                 label: const Text('Camera')),
//             verticalSpace(10),
//             TextButton.icon(
//                 onPressed: () {
//                   cubit.pickFromGalary();
//                   context.pop();
//                 },
//                 icon: const Icon(IconlyBold.image),
//                 label: const Text('Galary')),
//             verticalSpace(10),
//             if (cubit.imageFile != null)
//               TextButton.icon(
//                   onPressed: () {
//                     cubit.removeImage();
//                     context.pop();
//                   },
//                   icon: const Icon(
//                     Icons.remove_circle_outline,
//                     color: Colors.red,
//                   ),
//                   label: const Text('Remove')),
//           ],
//         ),
//       ),
//     );
//   }
// }
