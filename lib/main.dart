import 'package:flutter_common_app/app.dart';
import 'package:flutter_common_app/utilities/index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //비동기 메소드 호출 시 사용
  await Firebase.initializeApp(); //Firebase 초기화
  final appDocDir = await getApplicationDocumentsDirectory();
  Hive..init(appDocDir.path); //Hive 초기화
  await Hive.openBox('cache'); //Hive cache박스 등록
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider<ThemeProvider>(
        create: (BuildContext context) => ThemeProvider(),
      ),
      ChangeNotifierProvider<AuthProvider>(
        create: (BuildContext context) => AuthProvider(),
      ),
    ], child: App()),
  );
}
