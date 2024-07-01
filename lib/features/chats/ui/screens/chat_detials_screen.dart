import 'package:flutter/material.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/helper/spacing.dart';

import 'package:social_app/core/style/text_styles.dart';
import 'package:social_app/core/widgets/app_text_filed.dart';
import 'package:social_app/core/widgets/custom_cached_image.dart';
import 'package:social_app/features/profile/data/models/profile_response/profile_response.dart';

class ChatDetailsScreen extends StatefulWidget {
  const ChatDetailsScreen({super.key, required this.user});
  final UserResponse user;

  @override
  State<ChatDetailsScreen> createState() => _ChatDetailsScreenState();
}

class _ChatDetailsScreenState extends State<ChatDetailsScreen> {
  final messageController = TextEditingController();
  FocusNode messageFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              child: CustomCachedNetworkImage(
                imageUrl: widget.user.image!,
                size: 20,
                height: 50,
                width: 50,
                radius: 320,
              ),
            ),
            horizontalSpace(10),
            Text(
              widget.user.name!,
              style: AppTextStyles.font18Black,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(8),
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8),
                        ),
                      ),
                      child: const Text('data'),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8),
                        ),
                      ),
                      child: const Text('data'),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Container(
                padding: EdgeInsets.zero,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: AppTextFormFiled(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusNode: messageFocusNode,
                        hintText: 'type a message here',
                        controller: messageController,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return 'please type a message';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromHeight(60),
                        shape: const RoundedRectangleBorder(
                            // borderRadius: BorderRadius.all(Radius.circular(8)),
                            ),
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {},
                      child: const Icon(Icons.send),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChatDetailsItem extends StatelessWidget {
  const ChatDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(8),
          // bottomLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          topLeft: Radius.circular(8),
        ),
      ),
      child: const Text('data'),
    );
  }
}
