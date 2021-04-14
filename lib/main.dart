import 'package:flutter_common_app/app.dart';
import 'package:flutter_common_app/index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //비동기 메소드 사용하기 위해 선언
  await Firebase.initializeApp(); //Firebase 초기화
  final appDocDir = await getApplicationDocumentsDirectory(); //Hive 디렉토리 설정
  Hive..init(appDocDir.path); //Hive 초기화
  await Hive.openBox('cache'); //Hive cache박스 등록

  //화면 회전 막기
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  //최상단 상태바 색상 변경
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => ThemeProvider(),),
      ChangeNotifierProvider(create: (_) => LoginProvider.instance()),
      ChangeNotifierProvider(create: (_) => BottomNavigationBarProvider(),),
      Provider(create: (context) => FirestoreDatabase()),
    ], child: MyApp()),
  );
}
