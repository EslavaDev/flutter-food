import 'package:custom1/ui/pages/home.dart';
import 'package:custom1/ui/pages/login.dart';
import 'package:custom1/ui/pages/more.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom1/helpers/router-path.dart' as routes;

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.MoreRoute:
      return MaterialPageRoute(builder: (context) => More());
    case routes.LoginRoute:
      return MaterialPageRoute(builder: (context) => Login());
    case routes.HomeRoute:
//      var userName = settings.arguments as String;
      return MaterialPageRoute(
          builder: (context) => Home());
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No path for ${settings.name}'),
          ),
        ),
      );
  }
}