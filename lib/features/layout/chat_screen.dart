import 'package:flutter/material.dart';
import 'package:social_app/core/helper/cash_helper/cash_helper_constants.dart';
import 'package:social_app/core/helper/extentaion.dart';
import 'package:social_app/core/router/routes.dart';
import '../../core/helper/cash_helper/cash_helper.dart';

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
                  CashHelper.removeData(key: CashConstants.userId)
                      .then((value) {
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
