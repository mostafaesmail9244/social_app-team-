import 'package:flutter/material.dart';
import 'package:social_app/core/constants/constants.dart';
import 'package:social_app/core/helper/cach_helper.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/router/routes.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            const Card(
              shape: CircleBorder(),
              child: Text('data'),
            ),
            TextButton(
                onPressed: () {
                  CacheHelper.removeData(key: Constants.uId).then((value) {
                    context.pushReplacmentNamed(Routes.loginScreen);
                  });
                },
                child: const Text('Log out')),
          ],
        ),
      ),
    );
  }
}
