import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final TextEditingController onChange;
  final String hint;
  final double sizeProps;
  final bool border;
  TextFieldCustom({Key key, this.onChange, this.hint, this.sizeProps, this.border = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width - this.sizeProps,
      margin: EdgeInsets.only(left: 10),
      child: TextField(
        controller: this.onChange,
        decoration: InputDecoration(
          border: this.border ? OutlineInputBorder() : InputBorder.none,
          hintText: this.hint,
        ),
        style: TextStyle(fontSize: 18.0, height: 1.1, color: Colors.black),
      ),
    );
  }
}