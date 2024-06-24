// import 'package:flutter/material.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:social_app/core/widgets/components.dart';
// import 'package:social_app/core/constants/constants.dart';
// import 'package:social_app/core/helper/extentaion.dart';
// import 'package:social_app/core/helper/spacing.dart';
// import 'package:social_app/core/style/text_styles.dart';
// import 'package:social_app/features/settings/logic/cubit/profile_cubit.dart';
// import 'package:social_app/features/settings/view/widgets/edite_profile_image_section.dart';

// class EditeProflieScreen extends StatefulWidget {
//   const EditeProflieScreen({
//     super.key,
//   });
//   @override
//   State<EditeProflieScreen> createState() => _EditeProflieScreenState();
// }

// class _EditeProflieScreenState extends State<EditeProflieScreen> {
//   final nameController = TextEditingController();
//   final _nameFocusNode = FocusNode();
//   final bioController = TextEditingController();
//   final _bioFocusNode = FocusNode();
//   final phoneController = TextEditingController();
//   final _phoneFocusNode = FocusNode();
//   @override
//   void initState() {
//     nameController.text = Constants.userModel.name!;
//     bioController.text = Constants.userModel.bio!;
//     phoneController.text = Constants.userModel.phone!;

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//             onPressed: () {
//               context.pop();
//             },
//             icon: const Icon(Icons.arrow_back_ios)),
//         title: Text(
//           'Edite Profile',
//           style: AppTextStyles.font24Black700,
//         ),
//         actions: [
//           TextButton(
//               onPressed: () {},
//               child: Text(
//                 'Update',
//                 style: AppTextStyles.font18Black.copyWith(color: Colors.blue),
//               ))
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 12),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               // if (state is UpdateUserDataLoadingState)
//               // const LinearProgressIndicator(),
//               EditeProfileImageSction(
//                   profileImage: Constants.userModel.profileImage!,
//                   backGroundImage: Constants.userModel.coverImage),
//               verticalSpace(16),
//               Row(
//                 children: [
//                   if (context.read<SettingsCubit>().profileFile != null)
//                     Expanded(
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         child: Text(
//                           'Upload profile',
//                           style: AppTextStyles.font14BlueSemiBold,
//                         ),
//                       ),
//                     ),
//                   horizontalSpace(12),
//                   if (context.read<SettingsCubit>().covereFile != null)
//                     Expanded(
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         child: Text(
//                           'Upload Cover',
//                           style: AppTextStyles.font14BlueSemiBold,
//                         ),
//                       ),
//                     ),
//                 ],
//               ),
//               verticalSpace(16),
//               defaultTextFormFeild(
//                 controller: nameController,
//                 type: TextInputType.text,
//                 textInputAction: TextInputAction.next,
//                 focusNode: _nameFocusNode,
//                 prefixIcon: Icons.person,
//                 autofillHints: [AutofillHints.name],
//                 label: const Text('name'),
//               ),
//               verticalSpace(12),
//               defaultTextFormFeild(
//                 controller: bioController,
//                 type: TextInputType.text,
//                 textInputAction: TextInputAction.next,
//                 focusNode: _bioFocusNode,
//                 prefixIcon: Icons.info_outline_rounded,
//                 label: const Text('bio'),
//               ),
//               verticalSpace(12),
//               defaultTextFormFeild(
//                 controller: phoneController,
//                 type: TextInputType.text,
//                 textInputAction: TextInputAction.done,
//                 focusNode: _phoneFocusNode,
//                 prefixIcon: Icons.phone,
//                 autofillHints: [AutofillHints.name],
//                 label: const Text('phone'),
//               ),
//               verticalSpace(15),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
