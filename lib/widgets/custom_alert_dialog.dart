import 'package:flutter_common_app/utilities/index.dart';

class CustomAlertDialog extends StatefulWidget {
  CustomAlertDialog({
    this.contentText,
    this.leftButtonText,
    this.rightButtonText,
    this.leftButtonFunction,
    this.rightButtonFunction,
  });
  final String? contentText;
  final String? leftButtonText;
  final String? rightButtonText;
  final Function? leftButtonFunction;
  final Function? rightButtonFunction;

  @override
  _CustomAlertDialog createState() => _CustomAlertDialog();
}

class _CustomAlertDialog extends State<CustomAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: widget.key,
      title: Text(widget.contentText!, textAlign: TextAlign.center),
      titleTextStyle: TextStyle(fontSize: 25.0, color: Colors.black),
      titlePadding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 20.0),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Container(
                  height: 64.0,
                  child: TextButton(
                    child: Text(widget.leftButtonText!),
                    onPressed: widget.leftButtonFunction!(),
                  ))),
          SizedBox(width: 10.0),
          Expanded(
              flex: 1,
              child: Container(
                  height: 64.0,
                  child: TextButton(
                    child: Text(widget.rightButtonText!),
                    onPressed: widget.rightButtonFunction!(),
                  ))),
        ],
      ),
      contentPadding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 30.0),
    );
  }
}