import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../text_widget.dart';

class GroupedDateWidget extends StatelessWidget {
  final String label;
  const GroupedDateWidget({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
        color: Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: TextWidget(
            label: label,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
