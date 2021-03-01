import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute (RouteSettings settings) {
    final args = settings.arguments;
    print('route:${settings.name}');
    switch(settings.name){
      // case '/':
      //   return 최초호출화면;
      case '/login':
        //return MaterialPageRoute(builder: (context) => LoginScreen());
      case '/splash':
        //return MaterialPageRoute(builder: (context) => SplashScreen());
      case '/main':
      //return MaterialPageRoute(builder: (context) => MainScreen());
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