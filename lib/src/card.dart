import 'dart:async';

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;
  MyCard({Key key, this.title, this.icon, this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text(
              this.title,
              style: TextStyle(fontSize: 30, color: Colors.grey),
            ),
            Icon(
              this.icon,
              color: this.iconColor,
              size: 40.0,
            )
          ],
        ),
      ),
    );
    ;
  }
}
