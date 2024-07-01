
import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            Card(
              shape: CircleBorder(),
              child: Text('data'),
            )
          ],
        ),
      ),
    );
  }
}