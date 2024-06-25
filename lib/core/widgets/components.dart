import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:social_app/core/helper/extentaion.dart';
import '../helper/spacing.dart';
import '../style/text_styles.dart';

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

void showWarningDialog({
  required BuildContext context,
  required String title,
  required String subTitle,
  required String textTap,
  required void Function()? onTap,
  Color? textTapColor,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        content: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 16), // EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              verticalSpace(10),
              Text(
                title,
                style: AppTextStyles.font24SemiBoldBlue.copyWith(fontSize: 20),
              ),
              verticalSpace(15),
              Text(
                subTitle,
                style: AppTextStyles.font14GreyRegular,
                textAlign: TextAlign.center,
              ),
              verticalSpace(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () => context.pop(),
                    child: Text(
                      "Cancel",
                      style: AppTextStyles.font18Black,
                    ),
                  ),
                  TextButton(
                    onPressed: onTap,
                    child: Text(
                      textTap,
                      style: AppTextStyles.font18Black
                          .copyWith(color: textTapColor ?? Colors.red),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
