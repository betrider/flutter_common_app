import 'package:flutter_common_app/index.dart';

Future<String> customTimePicker(BuildContext context) {
  return !Platform.isAndroid
      ? materialTimePicker(context)
      : cupertinoTimePicker(context);
}

Future<String> materialTimePicker(BuildContext context) async{
  DateTime now = DateTime.now();
  TimeOfDay initialTimer = TimeOfDay.now();
  String newTime = DateFormat("HH:mm").format(now);

  await showTimePicker(
      context: context,
      initialTime: initialTimer
  ).then((onValue) {
    DateTime dt = DateTime(now.year, now.month, now.day, onValue!.hour, onValue.minute);

    //String timeFormat1 = DateFormat("HH:mm:ss").format(dt); //HH:MM:SS
    String timeFormat2 = DateFormat("HH:mm").format(dt); //HH:MM
    //String timeFormat3 = DateFormat("HH").format(dt); //HH

    newTime = timeFormat2;
  }).catchError((e) {

  });
  return newTime;
}

Future<String> cupertinoTimePicker(BuildContext context) async{
  DateTime now = DateTime.now();
  Duration initialTimer = Duration(hours: now.hour, minutes: now.minute, seconds: now.second);
  String newTime = DateFormat("HH:mm").format(now);

  await showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
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
                        newTime = '';
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
                  color: Color(0xffffffff),
                  child: CupertinoTimerPicker(
                      initialTimerDuration: initialTimer,
                      mode: CupertinoTimerPickerMode.hm, //hms,hm,ms
                      minuteInterval: 1, //분 간격
                      secondInterval: 1, //초 간격
                      onTimerDurationChanged: (value) {
                        String twoDigits(int n) => n.toString().padLeft(2, "0");
                        String twoDigitMinutes = twoDigits(value.inMinutes.remainder(60));
                        //String twoDigitSeconds = twoDigits(value.inSeconds.remainder(60));

                        //String timeFormat1 = "${twoDigits(value.inHours)}:$twoDigitMinutes:$twoDigitSeconds"; //HH:MM:SS
                        String timeFormat2 = "${twoDigits(value.inHours)}:$twoDigitMinutes"; //HH:MM
                        //String timeFormat3 = "${twoDigits(value.inHours)}"; //HH

                        newTime = timeFormat2;
                      }
                  ),
                ),
              ),
            ],
          ),
        );
      });
  return newTime;
}