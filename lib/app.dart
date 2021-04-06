import 'package:flutter_common_app/index.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {

  final bool isFirst = Hive.box('cache').get('isFirst') ?? true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: customNavigator.navigationKey,
      title: 'Flutter Demo',
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: context.watch<ThemeProvider>().currentTheme,
      localizationsDelegates: [ //다국어 지원
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
      supportedLocales: [ //다국어 지원
          const Locale('ko', 'KR'),
          const Locale('en', 'US'),
        ],
      home: isFirst ? StartScreen() : SplashScreen(),
    );
  }
}