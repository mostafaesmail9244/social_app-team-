import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/core/shared/widgets/app_text_filed.dart';
import 'package:social_app/core/style/app_colors.dart';
import '../../../../core/style/text_styles.dart';
import '../../view_model/users_search_cubit/users_search_cubit.dart';

class SearchTittle extends StatefulWidget {
  const SearchTittle({super.key});

  @override
  State<SearchTittle> createState() => _SearchTittleState();
}

class _SearchTittleState extends State<SearchTittle> {
  bool searchOpened = false;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UsersSearchCubit>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          searchOpened == false
              ? Text(
                  'Search User',
                  style: AppTextStyles.font24SemiBoldBlue
                      .copyWith(fontSize: 20.sp),
                )
              : Expanded(
                  child: AppTextFormFiled(
                    controller: cubit.searchController,
                    focusNode: cubit.searchFocusNode,
                    contentPadding: const EdgeInsets.all(15),
                    hintText: 'Search Users....',
                    validator: (val) {},
                    keyboardType: TextInputType.text,
                    onChanged: (p0) {
                      cubit.searchAboutUser();
                    },
                  ),
                ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: GestureDetector(
              child: Icon(
                searchOpened == false ? Icons.search : Icons.clear,
                color: AppColors.mainBlue,
              ),
              onTap: () {
                setState(() {
                  searchOpened = !searchOpened;
                });
                if (searchOpened) {
                  Future.delayed(const Duration(milliseconds: 20), () {
                    FocusScope.of(context).requestFocus(cubit.searchFocusNode);
                  });
                } else {
                  cubit.clear();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
