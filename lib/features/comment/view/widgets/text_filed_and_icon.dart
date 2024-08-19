import 'package:flutter/material.dart';
import '../../../../core/shared/widgets/app_text_filed.dart';
import '../../../../core/shared/widgets/icon_button_filled.dart';
import '../../view_model/comment_cubit/comment_cubit.dart';

class TextFiledAndIcon extends StatefulWidget {
  final CommentCubit cubit;
  final String postID;
  const TextFiledAndIcon({
    super.key,
    required this.cubit,
    required this.postID,
  });

  @override
  State<TextFiledAndIcon> createState() => _TextFiledAndIconState();
}

class _TextFiledAndIconState extends State<TextFiledAndIcon> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      FocusScope.of(context).requestFocus(widget.cubit.focusNode);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: AppTextFormFiled(
              contentPadding: const EdgeInsets.all(15),
              focusNode: widget.cubit.focusNode,
              filled: true,
              fillColor: Colors.grey.withOpacity(0.05),
              borderRadius: 8,
              hintText: 'Enter your comment ....',
              // focusNode: cubit.focusNode,
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return "Please enter a valid title";
                }
              },
              keyboardType: TextInputType.text,
              controller: widget.cubit.tittleController,
            ),
          ),
          CustomIconFilled(
            isComment: true,
            onPressed: () {
              widget.cubit.emitToAddComment(widget.postID);
            },
            icon: Icons.send_rounded,
          ),
        ],
      ),
    );
  }
}
