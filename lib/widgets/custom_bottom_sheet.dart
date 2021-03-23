import 'package:flutter_common_app/utilities/index.dart';

Future<String> customBottomSheet(BuildContext context, List<String> list) {
  return Platform.isAndroid
      ? materialBottomSheet(context, list)
      : cupertinoBottomSheet(context, list);
}

Future<String> materialBottomSheet(BuildContext context, List<String> list) async {
  String rtnValue = '';
  await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Wrap(
            children: List.generate(list.length, (index) {
              return ListTile(
                // leading: Icon(Icons.ac_unit),
                title: Text(list[index]),
                onTap: () {
                  rtnValue = list[index];
                  Navigator.pop(context);
                },
              );
            }),
          ),
        );
      });
  return rtnValue;
}

Future<String> cupertinoBottomSheet(BuildContext context, List<String> list) async {
  String rtnValue = '';
  await showCupertinoModalPopup(
    context: context,
    builder: (BuildContext context) => CupertinoActionSheet(
      // title: Text('title'),
      // message: Text('message'),
      actions: List.generate(
        list.length,
        (index) {
          return CupertinoActionSheetAction(
            child: Text(list[index]),
            onPressed: () {
              rtnValue = list[index];
              Navigator.pop(context);
            },
          );
        },
      ),
      cancelButton: CupertinoActionSheetAction(
        child: Text('취소'),
        onPressed: (){
          rtnValue = '';
          Navigator.pop(context);
        },
      ),
    ),
  );
  return rtnValue;
}
