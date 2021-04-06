import 'package:flutter_common_app/index.dart';

class TestNotifications extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TestNotifications> {
  late FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;

  @override
  void initState() {
    super.initState();

    //초기화
    var initializationSettingsAndroid = AndroidInitializationSettings('@mipmap/ic_launcher');
    var initializationSettingsIOS = IOSInitializationSettings();

    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);

    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  //메시지 클릭 시 이벤트
  Future<void> onSelectNotification(String payload) async {
    debugPrint("$payload");
    showDialog(
        context: context,
        builder: (_) =>
            AlertDialog(
              title: Text('Notification Payload'),
              content: Text('Payload: $payload'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
        centerTitle: true,
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _showNotification,
              child: Text('Show Notification'),
            ),
            ElevatedButton(
              onPressed: _dailyAtTimeNotification,
              child: Text('Daily At Time Notification'),
            ),
            ElevatedButton(
              onPressed: _repeatNotification,
              child: Text('Repeat Notification'),
            ),
            ElevatedButton(
              onPressed: () => _flutterLocalNotificationsPlugin.cancelAll(),
              child: Text('취소'),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  //기본 Notification
  Future<void> _showNotification() async {
    var android = AndroidNotificationDetails(
        'your channel id', 'your channel name', 'your channel description',
        importance: Importance.max, priority: Priority.high);
    var ios = IOSNotificationDetails();

    var detail = NotificationDetails(android: android, iOS: ios);

    await _flutterLocalNotificationsPlugin.show(
      0,
      '단일 Notification',
      '단일 Notification 내용',
      detail,
      payload: 'Hello Flutter',
    );
  }

  //지정 Notification
  Future<void> _dailyAtTimeNotification() async {
    var android = AndroidNotificationDetails(
        'your channel id', 'your channel name', 'your channel description',
        importance: Importance.max, priority: Priority.high);
    var ios = IOSNotificationDetails();

    var detail = NotificationDetails(android: android, iOS: ios);

    await _flutterLocalNotificationsPlugin.show(
      0,
      '매일 똑같은 시간의 Notification',
      '매일 똑같은 시간의 Notification 내용',
      detail,
      payload: 'Hello Flutter',
    );
  }

  //반복 Notification
  Future<void> _repeatNotification() async {
    var android = AndroidNotificationDetails(
        'your channel id', 'your channel name', 'your channel description',
        importance: Importance.max, priority: Priority.high);
    var ios = IOSNotificationDetails();

    var detail = NotificationDetails(android: android, iOS: ios);

    await _flutterLocalNotificationsPlugin.periodicallyShow(
      0,
      '반복 Notification',
      '반복 Notification 내용',
      RepeatInterval.everyMinute,
      detail,
      payload: 'Hello Flutter',
    );
  }
}