import 'package:flutter_common_app/utilities/index.dart';
import 'package:flutter/cupertino.dart';

void customShowDialog({required BuildContext context, String title = 'title', String content = 'content'}) {
  showDialog(
    context: context,
    barrierDismissible: true, //외부 클릭시 메시지 사라지게할지 여부
    builder: (BuildContext context) {
      // return object of type Dialog
      return CustomAlertDialog(title: title, content: content);
    },
  );
}

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final String content;

  CustomAlertDialog({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            scrollable: true, //전체 스크롤
            title: Text(title),
            content: Text(content), //content: SingleChildScrollView(child: Text("Alert Dialog body")), //바디만 스크롤
            actions: <Widget>[
              TextButton(
                child: Text("네"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          )
        : CupertinoAlertDialog(
            title: Text(title),
            content: Text(content),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text("네"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
  }
}


/* void customShowDialog({required BuildContext context, String? contentText, String? leftButtonText, String? rightButtonText, Function? leftButtonFunction, Function? rightButtonFunction}) {
  showDialog(
    context: context,
    barrierDismissible: true, //외부 클릭시 메시지 사라지게할지 여부
    builder: (BuildContext context) {
      return CustomAlertDialog(
        contentText: contentText,
        leftButtonText: leftButtonText,
        rightButtonText: rightButtonText,
        leftButtonFunction: leftButtonFunction,
        rightButtonFunction: rightButtonFunction,
        );
    },
  );
}

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
} */
