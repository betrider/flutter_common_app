import 'package:flutter/material.dart';
import 'package:adaptive_dialog/adaptive_dialog.dart';

//참조 https://pub.dev/packages/adaptive_dialog
class TestShowDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //OkCancelResult.ok
          ElevatedButton(
            child: Text('showOkAlertDialog'),
            onPressed: () async {
              
              final result = await showOkAlertDialog(
                context: context,
                title: 'Title',
                message: 'This is message.',
              );
              print(result);
            },
          ),
          // OkCancelResult.cancel / OkCancelResult.ok
          ElevatedButton(
            child: Text('showOkCancelAlertDialog'),
            onPressed: () async{
              final result = await showOkCancelAlertDialog(
                context: context,
                title: 'Title',
                message: 'This is message.',
              );
              print(result);
            },
          ),
          //null / 0
          ElevatedButton(
            child: Text('showConfirmationDialog'),
            onPressed: () async{
              final result = await showConfirmationDialog<int>(
                context: context,
                title: 'Title',
                message: 'This is message.',
                actions: [
                  ...List.generate(
                    5,
                    (index) => AlertDialogAction(
                      label: 'Answer $index',
                      key: index,
                    ),
                  ),
                ],
              );
              print(result);
            },
          ),
          //null / helloKey1
          ElevatedButton(
            child: Text('showModalActionSheet'),
            onPressed: () async{
              final result = await showModalActionSheet(
                context: context,
                actions: [
                  const SheetAction(
                    icon: Icons.info,
                    label: 'Hello1',
                    key: 'helloKey1',
                  ),
                  const SheetAction(
                    icon: Icons.info,
                    label: 'Hello2',
                    key: 'helloKey2',
                  ),
                  const SheetAction(
                    icon: Icons.info,
                    label: 'Hello3',
                    key: 'helloKey3',
                  ),
                ],
                title: 'Title',
                message: 'This is message.',
              );
              print(result);
            },
          ),
          //null / helloKey
          ElevatedButton(
            child: Text('showModalActionSheet2'),
            onPressed: () async{
              final result = await showModalActionSheet<String>(
                context: context,
                title: 'Title',
                message: 'Message',
                actions: [
                  const SheetAction(
                    icon: Icons.info,
                    label: 'Hello',
                    key: 'helloKey',
                  ),
                  const SheetAction(
                    icon: Icons.warning,
                    label: 'Destructive',
                    key: 'destructiveKey',
                    isDestructiveAction: true,
                  ),
                ],
              );
              print(result);
            },
          ),
          //false / [22]
          ElevatedButton(
            child: Text('showTextInputDialog1'),
            onPressed: () async{
              final result = await showTextInputDialog(
                context: context,
                textFields: const [
                  DialogTextField(
                    hintText: 'hintText',
                    // prefixText: '\$',
                    // suffixText: 'Dollar',
                  ),
                ],
                title: 'Hello',
                message: 'This is message.',
                
              );
              print(result);
            },
          ),
          //null / [mono0926@gmail.com, 123]
          ElevatedButton(
            child: Text('showTextInputDialog2'),
            onPressed: () async{
              final result = await showTextInputDialog(
                context: context,
                textFields: const [
                  DialogTextField(
                    hintText: 'Email',
                    initialText: 'mono0926@gmail.com',
                  ),
                  DialogTextField(
                    hintText: 'Password',
                    obscureText: true,
                  ),
                ],
                title: 'Hello',
                message: 'This is a message',
              );
              print(result);
            },
          ),
          //false / true
          ElevatedButton(
            child: Text('showTextAnswerDialog'),
            onPressed: () async{
               final ok = await showTextAnswerDialog(
                context: context,
                keyword: 'Flutter', //필수입력되어야 하는 값
                title: 'What\'s the best mobile application framework?',
                message: 'Input answer and press OK',
                isDestructiveAction: true,
                hintText: 'Start with "F"',
                retryTitle: 'Incorrect',
                retryMessage: 'Retry?',
                retryOkLabel: '재시도'
              );
              print('ok: $ok');
              if (!ok) {
                return;
              }
              await showOkAlertDialog(
                context: context,
                title: 'That\'s right👍',
              );
            },
          ),
        ],
      )),
    );
  }
}
