import 'package:flutter_common_app/utilities/index.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: SplashScreen(),
    );
  }
}