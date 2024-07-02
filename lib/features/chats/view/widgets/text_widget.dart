import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.label,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.textDecoration,
    this.textAlign,
  });

  final String label;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final int? maxLines;
  final TextDecoration? textDecoration;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      maxLines: maxLines ?? 100,
      // textAlign: TextAlign.justify,
      style: TextStyle(
        color: color,
        fontSize: fontSize ?? 17.sp,
        fontWeight: fontWeight ?? FontWeight.bold,
        overflow: TextOverflow.ellipsis,
        decoration: textDecoration,
      ),
      textAlign: textAlign,
    );
  }
}
