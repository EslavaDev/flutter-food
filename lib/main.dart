import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:custom1/ui/pages/home.dart';
import 'package:custom1/helpers/router-path.dart' as routes;
import 'package:custom1/ui/router.dart' as router;

void main() => runApp(MaterialApp(
home:  Home(),
 onGenerateRoute: router.generateRoute,
      initialRoute: routes.HomeRoute,
));