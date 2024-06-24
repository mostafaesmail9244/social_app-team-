// import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_iconly/flutter_iconly.dart';
// import 'package:social_app/core/helper/extentaion.dart';
// import 'package:social_app/core/helper/spacing.dart';
// import 'package:social_app/core/style/text_styles.dart';
// import 'package:social_app/features/settings/logic/cubit/profile_cubit.dart';

// class EditeProfileImageSction extends StatelessWidget {
//   const EditeProfileImageSction({
//     super.key,
//     required this.profileImage,
//     required this.backGroundImage,
//   });
//   final String profileImage;
//   final String? backGroundImage;
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<SettingsCubit, SettingsState>(
//       builder: (context, state) {
//         return SizedBox(
//           height: context.deviceHeight * .3,
//           child: Stack(
//             alignment: AlignmentDirectional.bottomCenter,
//             children: [
//               // background image section
//               if (backGroundImage == null &&
//                   context.read<SettingsCubit>().covereFile == null)
//                 Align(
//                   alignment: Alignment.topRight,
//                   child: IconButton(
//                     onPressed: () {
//                       showbackImgaeDialog(
//                           context, context.read<SettingsCubit>());
//                     },
//                     style: IconButton.styleFrom(backgroundColor: Colors.blue),
//                     icon: const Icon(
//                       IconlyLight.camera,
//                       color: Colors.white,
//                       size: 25,
//                     ),
//                   ),
//                 ),
//               if (backGroundImage != null ||
//                   context.read<SettingsCubit>().covereFile != null)
//                 Stack(
//                   alignment: AlignmentDirectional.topEnd,
//                   children: [
//                     Align(
//                       alignment: Alignment.topCenter,
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(12),
//                         child: context.read<SettingsCubit>().covereFile == null
//                             ? FancyShimmerImage(
//                                 height: context.deviceHeight * .24,
//                                 width: double.infinity,
//                                 boxFit: BoxFit.cover,
//                                 imageUrl: backGroundImage!)
//                             : Image.file(
//                                 context.read<SettingsCubit>().covereFile!,
//                                 height: context.deviceHeight * .24,
//                                 width: double.infinity,
//                                 fit: BoxFit.cover,
//                               ),
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () {
//                         showbackImgaeDialog(
//                             context, context.read<SettingsCubit>());
//                       },
//                       style: IconButton.styleFrom(backgroundColor: Colors.blue),
//                       icon: const Icon(
//                         IconlyLight.camera,
//                         color: Colors.white,
//                         size: 25,
//                       ),
//                     )
//                   ],
//                 ),
//               // profile image section
//               Stack(
//                 alignment: AlignmentDirectional.bottomEnd,
//                 children: [
//                   CircleAvatar(
//                     radius: 56,
//                     backgroundColor: Colors.white,
//                     child: CircleAvatar(
//                       radius: 55,
//                       backgroundColor: Colors.white,
//                       backgroundImage:
//                           context.read<SettingsCubit>().profileFile == null
//                               ? NetworkImage(profileImage)
//                               : FileImage(context
//                                   .read<SettingsCubit>()
//                                   .profileFile!) as ImageProvider,
//                       // child: ClipRRect(
//                       //   borderRadius: BorderRadius.circular(55),
//                       //   child: context.read<SettingsCubit>().profileFile == null
//                       //       ? FancyShimmerImage(
//                       //           imageUrl: image,
//                       //           boxFit: BoxFit.cover,
//                       //         )
//                       //       : Image.file(
//                       //           context.read<SettingsCubit>().profileFile!,
//                       //           fit: BoxFit.cover,
//                       //         ),
//                       // ),
//                     ),
//                   ),
//                   IconButton(
//                     onPressed: () {
//                       showProfileImgaeDialog(
//                           context, context.read<SettingsCubit>());
//                     },
//                     style: IconButton.styleFrom(backgroundColor: Colors.blue),
//                     icon: const Icon(
//                       IconlyLight.camera,
//                       color: Colors.white,
//                       size: 25,
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }

//   void showProfileImgaeDialog(context, SettingsCubit cubit) async {
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
//                   cubit.pickProfileImageFromCamera();
//                   context.pop();
//                 },
//                 icon: const Icon(IconlyBold.camera),
//                 label: const Text('Camera')),
//             verticalSpace(10),
//             TextButton.icon(
//                 onPressed: () {
//                   cubit.pickProfileImageFromGalary();
//                   context.pop();
//                 },
//                 icon: const Icon(IconlyBold.image),
//                 label: const Text('Galary')),
//             verticalSpace(10),
//             if (cubit.profileFile != null)
//               TextButton.icon(
//                   onPressed: () {
//                     cubit.removeProfileImage();
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

//   void showbackImgaeDialog(context, SettingsCubit cubit) async {
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
//                   cubit.pickBackgroundImageFromCamera();
//                   context.pop();
//                 },
//                 icon: const Icon(IconlyBold.camera),
//                 label: const Text('Camera')),
//             verticalSpace(10),
//             TextButton.icon(
//                 onPressed: () {
//                   cubit.pickBackgroundImageFromGalary();
//                   context.pop();
//                 },
//                 icon: const Icon(IconlyBold.image),
//                 label: const Text('Galary')),
//             verticalSpace(10),
//             if (cubit.covereFile != null)
//               TextButton.icon(
//                   onPressed: () {
//                     cubit.removeBackgroundImage();
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
