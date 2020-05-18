import 'package:flutter/material.dart';

class ButonActionBottom extends StatelessWidget {
  final Function onTap;
  final int index;
  final bool isLeft;
  final bool isSide;
  final IconData icon;
  ButonActionBottom({Key key, this.onTap, this.icon, this.index, this.isSide = false, this.isLeft = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = this.isSide ? 31.0 : 55.0;
    print(size);
    print(this.index);
    print(this.isLeft);
    return Container(
                width: 55,
                margin: isLeft ? EdgeInsets.only(left: size) : EdgeInsets.only(right: size),
                child: IconButton(
                  alignment: Alignment.center,
                  onPressed: () => onTap(this.index),
                  icon: Icon(this.icon, color: Colors.black45),
                ),
              );
  }
}