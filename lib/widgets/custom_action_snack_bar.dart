import 'package:flutter_common_app/index.dart';

///커스텀 액션 스낵바
void customActionSnackBar({required BuildContext context, required String content, required String actionLabel, required Function action}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(content),
    duration: Duration(seconds: 1),
    action: SnackBarAction(
      label: actionLabel,
      onPressed: () {
        action();
      },
    ),
  ));
}
