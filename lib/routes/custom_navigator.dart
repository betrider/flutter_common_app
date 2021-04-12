import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

final NavigationService customNavigator = NavigationService();

class NavigationService {

  static final NavigationService _instance = NavigationService._internal();

  factory NavigationService(){
    return _instance;
  }

  NavigationService._internal();

  GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  Future<T?> pushNamed<T extends Object?>(String routeName,
      {Object? arguments}) async {
    return navigationKey.currentState!.pushNamed<T>(
      routeName,
      arguments: arguments,
    );
  }

  Future<T?> push<T extends Object?>(Widget widget) async {
    return navigationKey.currentState!.push<T>(
      MaterialPageRoute(
        builder: (_) => widget,
      ),
    );
  }

  Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
      String routeName,
      {Object? arguments}) async {
    return navigationKey.currentState!.pushReplacementNamed<T, TO>(
      routeName,
      arguments: arguments,
    );
  }

  Future<T?> pushNamedAndRemoveUntil<T extends Object?>(
    String routeName, {
    Object? arguments,
    bool Function(Route<dynamic>)? predicate,
  }) async {
    return navigationKey.currentState!.pushNamedAndRemoveUntil<T>(
      routeName,
      predicate ?? (_) => false,
      arguments: arguments,
    );
  }

  Future<T?> pushAndRemoveUntil<T extends Object?>(
    Route<T> route, {
    bool Function(Route<dynamic>)? predicate,
  }) async {
    return navigationKey.currentState!.pushAndRemoveUntil<T>(
      route,
      predicate ?? (_) => false,
    );
  }

  Future<bool?> maybePop<T extends Object?>([Object? arguments]) async {
    return navigationKey.currentState!.maybePop<Object>(arguments);
  }

  bool canPop() => navigationKey.currentState!.canPop();

  void goBack<T extends Object?>({T? result}) {
    navigationKey.currentState!.pop<T>(result);
  }

  void popUntil(String route) {
    navigationKey.currentState!.popUntil(ModalRoute.withName(route));
  }

  RouteSettings pageSettings(BuildContext context) {
    return ModalRoute.of<RouteSettings>(context)!.settings;
  }
}
