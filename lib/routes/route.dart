import 'package:flutter_common_app/index.dart';

class RouteGenerator {
  static void routingCallback(Routing? routing){
    //푸시 이전 호출 , 팝 이후 호출
    print('routing 콜백: ${routing!.route}');
  }

  static List<GetPage<dynamic>> getPages() {
    return [
      GetPage(name: '/', page: () => SamplePage()),
    ];
  }
}

// static Route<dynamic> generateRoute(RouteSettings settings) {
  //   final args = settings.arguments;
  //   print('route:${settings.name}');
  //   switch (settings.name) {
  //     case '/sample':
  //       return MaterialPageRoute(builder: (context) => SamplePage());
  //     case '/testArgument':
  //       return MaterialPageRoute(builder: (context) => TestArgument(args));
  //     case '/main':
  //       return MaterialPageRoute(builder: (context) => MainScreen());
  //     default:
  //       return _errorRoute();
  //   }
  // }

  // static Route<dynamic> _errorRoute() {
  //   return MaterialPageRoute(builder: (context) {
  //     return CustomScaffold(
  //       appBar: AppBar(
  //         title: Text('ERROR'),
  //         centerTitle: true,
  //       ),
  //       body: Center(
  //         child: Text('Page not found!'),
  //       ),
  //     );
  //   });
  // }