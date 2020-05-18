import 'package:custom1/ui/atoms/float-button-navigation.dart';
import 'package:custom1/ui/molecules/search.dart';
import 'package:custom1/ui/template/layout.dart';
import 'package:flutter/material.dart';

import 'package:custom1/src/stateless2.dart';
import 'package:custom1/ui/organims/bottom-navigation-bar.dart';
import 'package:custom1/src/stateless.dart';
import 'package:custom1/helpers/router-path.dart' as routes;


class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController controller = PageController();
  String textAppbar;
  @override
  void initState() {
    super.initState();
    textAppbar = 'Stateless';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutCustom(
        safeArea: true,
        type: 1,
        child: PageView(
          children: <Widget>[
            Stataless(),
            Column(
              children: <Widget>[
                Search(),
                Stataless2(title: this.textAppbar)
              ],
            ),
            Stataless(),
            Stataless(),
          ],
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          pageSnapping: true,
          controller: controller,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatButtonNavigation(
        icon: Icons.shopping_cart,
        route: routes.MoreRoute,
        params: {},
      ),
      bottomNavigationBar: BottomNavigationBarCustom(
        controller: this.controller,
      ),
    );
  }
}
