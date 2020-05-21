import 'package:flutter/material.dart';

class Navigatior {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState.pushNamed(routeName, arguments: arguments);
  }

  goBack() {
    return navigatorKey.currentState.pop();
  }
}