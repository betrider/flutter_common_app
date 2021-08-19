import 'package:flutter_common_app/app.dart';
import 'package:flutter_common_app/index.dart';
import 'package:global_configuration/global_configuration.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //비동기 메소드 사용하기 위해 선언
  await Firebase.initializeApp(); //Firebase 초기화
  final appDocDir = await getApplicationDocumentsDirectory(); //Hive 디렉토리 설정
  Hive..init(appDocDir.path); //Hive 초기화
  await Hive.openBox('cache'); //Hive cache박스 등록

  await GlobalConfiguration().loadFromAsset("app_settings"); //환경설정 세팅

  //화면 회전 막기
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  //최상단 상태바 색상 변경
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));

  //intl 언어 설정
  Intl.defaultLocale = 'ko_KR';

  //getx 상태관리
  Get.put(LoginProvider2());
  Get.put(BottomNavigationBarProvider2());

  runApp(MyApp());
}
