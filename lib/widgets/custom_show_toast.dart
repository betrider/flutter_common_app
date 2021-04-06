import 'package:flutter_common_app/index.dart';

///커스텀 토스트
Future<bool?> displayToast({
  required String message,
  Color? backgroundColor,
  Color? textColor,
  double fontSize = 16,
}) {
  return Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: backgroundColor,
    textColor: textColor,
    fontSize: fontSize,
  );
}
