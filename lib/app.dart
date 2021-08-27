import 'package:flutter_common_app/index.dart';
import 'package:flutter_common_app/screens/login_screen.dart';
import 'package:flutter_common_app/screens/start_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      // onGenerateRoute: RouteGenerator.generateRoute,
      getPages: RouteGenerator.getPages(),
      routingCallback: RouteGenerator.routingCallback,
      // theme: context.watch<ThemeProvider>().currentTheme,
      theme: lightTheme,
      localizationsDelegates: [
        //다국어 지원
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        //다국어 지원
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
    final bool isFirst = Hive.box('cache').get('isFirst') ?? true;
    return GetBuilder<LoginProvider>(
      builder: (controller) {
        switch (controller.status) {
          case Status.Uninitialized:
            return isFirst ? StartScreen() : MainScreen();
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
