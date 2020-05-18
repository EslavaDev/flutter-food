import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  final Widget child;
  const AppBarCustom({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
        Align(
            alignment: Alignment(0,-.88),
            child: Row(children: <Widget>[
              SizedBox(
                width: 25,
              ),
              InkResponse(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.arrow_back))
            ],),
          );
  }
}
