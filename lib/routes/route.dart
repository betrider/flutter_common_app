import 'package:flutter_common_app/screens/sample/sample_screens/test_argument.dart';
import 'package:flutter_common_app/index.dart';
class RouteGenerator {
  static Route<dynamic> generateRoute (RouteSettings settings) {
    final args = settings.arguments;
    print('route:${settings.name}');
    switch(settings.name){
      case '/sample':
      return MaterialPageRoute(builder: (context) => SamplePage());
      case '/testArgument':
      return MaterialPageRoute(builder: (context) => TestArgument(args));
      case '/main':
      return MaterialPageRoute(builder: (context) => MainScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (context){
      return CustomScaffold(
        appBar: AppBar(
          title: Text('ERROR'),
          centerTitle: true,
        ),
        body: Center(
          child: Text('Page not found!'),
        ),
      );
    });
  }
}