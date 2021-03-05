import 'package:flutter_common_app/utilities/index.dart';
class RouteGenerator {
  static Route<dynamic> generateRoute (RouteSettings settings) {
    //final args = settings.arguments;
    print('route:${settings.name}');
    switch(settings.name){
      case '/main':
      return MaterialPageRoute(builder: (context) => MainScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (context){
      return Scaffold(
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