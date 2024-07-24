import 'package:flutter/material.dart';
import 'widgets/edit_profile/edit_proflie_body.dart';

class EditProflieView extends StatelessWidget {
  const EditProflieView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: EditProflieBody()),
    );
  }
}
