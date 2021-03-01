import 'package:flutter_common_app/utilities/index.dart';
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: Provider.of<ThemeProvider>(context).currentTheme,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}