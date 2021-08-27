import 'package:flutter_common_app/app.dart';
import 'package:flutter_common_app/index.dart';
import 'package:flutter_common_app/screens/sample/sample.dart';
import 'package:global_configuration/global_configuration.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //비동기 메소드 사용하기 위해 선언
  await Firebase.initializeApp(); //Firebase 초기화
  final appDocDir = await getApplicationDocumentsDirectory(); //Hive 디렉토리 설정
  Hive..init(appDocDir.path); //Hive 초기화
  await Hive.openBox('cache'); //Hive cache박스 등록

  await GlobalConfiguration().loadFromAsset("app_settings"); //환경설정 세팅

  //로컬 메시지
  configLocalNotification();

  //워크매니저 설정
  Workmanager().initialize(
      callbackDispatcher, // The top level function, aka callbackDispatcher
      isInDebugMode: isDebug()
          ? true
          : false // If enabled it will post a notification whenever the task is running. Handy for debugging tasks
      );

  //화면 회전 막기
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  //최상단 상태바 색상 변경
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));

  //intl 언어 설정
  Intl.defaultLocale = 'ko_KR';

  //getx 상태관리
  Get.put(LoginProvider());
  Get.put(BottomNavigationBarProvider());

  runApp(MyApp());
}

void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) {
    print(
        "Native called task: $task / inputData: $inputData"); //simpleTask will be emitted here.
    return Future.value(true);
  });
}

//로컬알림 Android, IOS 초기값 셋팅
void configLocalNotification() {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  var initializationSettingsAndroid =
      new AndroidInitializationSettings('@mipmap/ic_launcher');
  var initializationSettingsIOS = new IOSInitializationSettings(
      onDidReceiveLocalNotification: onDidReceiveLocalNotification);
  var initializationSettings = new InitializationSettings(
      android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
  flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onSelectNotification: onSelectNotification);
}

Future onSelectNotification(String? payload) async {
    if (payload != null) {
      debugPrint('notification payload: $payload');
    }
    await Navigator.push(
      Get.context!,
      MaterialPageRoute<void>(builder: (context) => SamplePage()),
    );
  }

  Future onDidReceiveLocalNotification(
      int? id, String? title, String? body, String? payload) async {
    // display a dialog with the notification details, tap ok to go to another page
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(title.toString()),
        content: Text(body.toString()),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: true,
            child: Text('Ok'),
            onPressed: () async {
              Navigator.of(context, rootNavigator: true).pop();
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SamplePage(),
                ),
              );
            },
          )
        ],
      ),
    );
  }