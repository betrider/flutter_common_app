import 'package:flutter_common_app/index.dart';
import 'package:flutter_common_app/localization_service.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: LocalizationService.locale,
      fallbackLocale: LocalizationService.fallbackLocale,
      translations: LocalizationService(),
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
    final bool isFirst = storage.read('isFirst') ?? true;
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
