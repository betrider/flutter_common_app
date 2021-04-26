import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ///context.mediaQuery
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension MediaQueryExtension on BuildContext {
  ///context.height
  double get height => mediaQuery.size.height;

  ///context.width
  double get width => mediaQuery.size.width;
}

extension NavigatorExt on BuildContext {

  ///context.push(Test());
  Future<T?> push<T>(Widget route) => Navigator.push(
      this,
      MaterialPageRoute(
        builder: (_) => route,
      ));

  ///context.pop();
  void pop<T extends Object>([T? result]) => Navigator.pop(this, result);

  ///context.pushNamed('/Test');
  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) =>
      Navigator.pushNamed<T?>(this, routeName, arguments: arguments);

  ///context.canPop();
  bool canPop() => Navigator.canPop(this);

  ///context.popUntil();
  void popUntil(RoutePredicate predicate) =>
      Navigator.popUntil(this, predicate);
}
