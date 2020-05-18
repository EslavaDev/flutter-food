import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  MyButton({Key key}) : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Genial"),
    );
  }
}