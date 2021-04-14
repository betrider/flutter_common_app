import 'package:flutter_common_app/index.dart';
import 'package:flutter_common_app/screens/login_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, LoginProvider loginProvider, _) {
        final bool isFirst = Hive.box('cache').get('isFirst') ?? true;
        //Uninitialized -> Authenticated 로그인이 필요없는 경우
        //Uninitialized -> LoginScreen -> Authenticated 로그인이 필요한 경우
        switch (loginProvider.status) {
          case Status.Uninitialized:
            return isFirst ? StartScreen() : SplashScreen();
          case Status.Unauthenticated:
          case Status.Authenticating:
            return LoginScreen();
          case Status.Authenticated:
            return MainScreen();
        }
      },
    );
  }
}