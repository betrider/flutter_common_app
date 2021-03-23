import 'package:flutter_common_app/utilities/index.dart';

Future<String> customDatePicker(BuildContext context) {
  return !Platform.isAndroid
      ? materialDatePicker(context)
      : cupertinoDatePicker(context);
}

Future<String> materialDatePicker(BuildContext context) async{
  DateTime now = DateTime.now();
  String newDateTime =  DateFormat("yyyy-MM-DD").format(now);
  await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2050))
      .then((onValue) {
    if (onValue != null) {
      newDateTime = DateFormat("yyyy-MM-DD").format(onValue);
    }
  });
  return newDateTime;
}

Future<String> cupertinoDatePicker(BuildContext context) async{
  DateTime now = DateTime.now();
  String newDateTime = DateFormat("yyyy-MM-DD").format(now);
  await showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        DateTime datetime = DateTime.now();
        return Container(
            height: MediaQuery.of(context).copyWith().size.height / 3,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xff999999),
                        width: 0.0,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CupertinoButton(
                        child: Text('취소'),
                        onPressed: () {
                          newDateTime = '';
                          Navigator.pop(context);
                        },
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 5.0,
                        ),
                      ),
                      CupertinoButton(
                        child: Text('선택'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 5.0,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color(0xfff7f7f7),
                    child: CupertinoDatePicker(
                      initialDateTime: datetime,
                      onDateTimeChanged: (DateTime newdate) {
                        newDateTime = DateFormat("yyyy-MM-dd").format(newdate);
                      },
                      use24hFormat: false,
                      minimumYear: 2010,
                      maximumYear: datetime.year,
                      maximumDate: new DateTime(datetime.year, 12, 31),
                      minuteInterval: 1,
                      mode: CupertinoDatePickerMode.date, //date, dateAndTime, time
                    ),
                  ),
                ),
              ],
            ));
      });
  return newDateTime;
}