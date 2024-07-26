import 'package:flutter/material.dart';
import '../../../core/shared/widgets/build_app_bar.dart';
import 'widgets/edit_profile/edit_proflie_body.dart';

class EditProflieView extends StatelessWidget {
  const EditProflieView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'Edit Profile'),
      body: const EditProflieBody(),
    );
  }
}
