import 'package:custom1/states/product.dart';
import 'package:custom1/ui/atoms/float-button-navigation.dart';
import 'package:custom1/ui/molecules/search.dart';
import 'package:custom1/ui/template/layout.dart';
import 'package:flutter/material.dart';

import 'package:custom1/src/stateless2.dart';
import 'package:custom1/ui/organims/bottom-navigation-bar.dart';
import 'package:custom1/src/stateless.dart';
import 'package:custom1/helpers/router-path.dart' as routes;
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController controller = PageController();

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
                Consumer<ProductProvider>(
                  builder: (_, snapshot, __) {
                    if (snapshot.loading) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.productList.length,
                      itemBuilder: (_, index) {
                        return Stataless2(
                          title: snapshot.productList[index].name,
                        );
                      },
                    );
                  },
                ),
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
        controller: controller,
      ),
    );
  }
}
