import 'package:flutter/material.dart';
import 'package:custom1/src/card.dart';

class Stataless2 extends StatelessWidget {
  final String title;

  Stataless2({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyCard(
              title: title,
              icon: Icons.star,
              iconColor: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
