import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


enum ToastEnum { success, error, warning }

void flutterToast({required String text, required ToastEnum state}) {
  Fluttertoast.showToast(
    msg: text,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 5,
    backgroundColor: toastColor(state),
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

Color toastColor(ToastEnum toastEnum) {
  Color color;
  switch (toastEnum) {
    case ToastEnum.success:
      color = Colors.green;
    case ToastEnum.warning:
      color = Colors.red;
    case ToastEnum.error:
      color = Colors.amber;
      break;
  }
  return color;
}

// Widget DefaultSmoothIndicator({
//   required PageController controller,
//   required int length,
//   Color activeColor = mainColor,
//   required double size,
//   required double radius,
//   double spacing = 10
// }){
//   return SmoothPageIndicator(
//     controller: controller,
//     count: length,
//     axisDirection: Axis.horizontal,
//     effect: SlideEffect(
//         spacing: 10,
//         radius: radius,
//         dotWidth: size,
//         dotHeight: size,
//         paintStyle:  PaintingStyle.stroke,
//         strokeWidth:  1.5,
//         dotColor:  Colors.grey,
//         activeDotColor: activeColor
//     ),
//   );
// }

void showSnackBar(
    {required String message,
    required BuildContext context,
    required Color color}) {
  var snackBar = SnackBar(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    content: Text(
      message,
      textAlign: TextAlign.center,
    ),
    clipBehavior: Clip.hardEdge,
    behavior: SnackBarBehavior.floating,
    margin: const EdgeInsets.symmetric(horizontal: 70, vertical: 15),
    padding: const EdgeInsets.all(10),
    backgroundColor: color,
    duration: const Duration(seconds: 1),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
