import 'package:custom1/states/product.dart';
import 'package:flutter/material.dart';
import 'package:custom1/ui/pages/home.dart';
import 'package:custom1/helpers/router-path.dart' as routes;
import 'package:custom1/ui/router.dart' as router;
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => ProductProvider()..getProduct(),
          ),
        ],
        child: MaterialApp(
          home: Home(),
          onGenerateRoute: router.generateRoute,
          initialRoute: routes.LoginRoute,
        ),
      ),
    );
