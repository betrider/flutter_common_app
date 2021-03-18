import 'package:flutter_common_app/utilities/index.dart';

///커스텀 스낵바
void customSnackBar({required BuildContext context, String content = 'content'}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(content),
    duration: Duration(seconds: 1),
    // action: SnackBarAction(
    //   label: 'ACTION',
    //   onPressed: () {},
    // ),
  ));
}
