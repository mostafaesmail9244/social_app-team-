import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app/core/widgets/app_text_filed.dart';
import 'package:social_app/features/chats/view_model/search_cubit/search_cubit.dart';

AppBar searchAppBar(BuildContext context) {
  final cubit = context.read<SearchCubit>();
  return AppBar(
    backgroundColor: Colors.white,
    title: AppTextFormFiled(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      hintText: 'Search about User ....',
      validator: (p0) {},
      keyboardType: TextInputType.text,
      controller: cubit.searchController,
      focusNode: cubit.searchFocusNode,
      suffixIcon: IconButton(
        onPressed: () => cubit.clear(),
        icon: const Icon(Icons.clear),
      ),
      onChanged: (val) {
        cubit.searchAboutUser();
      },
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 1.2),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    automaticallyImplyLeading: false,
    elevation: 0,
  );
}
