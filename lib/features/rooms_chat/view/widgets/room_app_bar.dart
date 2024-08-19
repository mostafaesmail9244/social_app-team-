import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_app/core/shared/widgets/app_text_filed.dart';
import 'package:social_app/core/style/app_colors.dart';
import 'package:social_app/features/rooms_chat/view_model/room_cubit/room_cubit.dart';

import '../../../../core/style/text_styles.dart';

class RoomAppBarTittle extends StatefulWidget {
  const RoomAppBarTittle({super.key});

  @override
  State<RoomAppBarTittle> createState() => _RoomAppBarTittleState();
}

class _RoomAppBarTittleState extends State<RoomAppBarTittle> {
  final TextEditingController textControler = TextEditingController();
  final FocusNode focusNode = FocusNode();
  bool searchOpened = false;

  @override
  void dispose() {
    textControler.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          searchOpened == false
              ? Text(
                  'Chats',
                  style: AppTextStyles.font24SemiBoldBlue
                      .copyWith(fontSize: 20.sp),
                )
              : Expanded(
                  child: AppTextFormFiled(
                    controller: textControler,
                    focusNode: focusNode,
                    contentPadding: const EdgeInsets.all(15),
                    hintText: 'Search',
                    validator: (val) {},
                    keyboardType: TextInputType.text,
                    onChanged: (p0) {
                      context.read<RoomCubit>().searchUserRoom(textControler);
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
                    FocusScope.of(context).requestFocus(focusNode);
                  });
                } else {
                  focusNode.unfocus();
                  context.read<RoomCubit>().clear(textControler);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
