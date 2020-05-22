import 'package:custom1/ui/organims/app-bar.dart';
import 'package:flutter/material.dart';
import 'package:custom1/ui/molecules/svg-stack.dart';

class LayoutCustom extends StatelessWidget {
  final Widget child;
  final int type;
  final bool safeArea;
  final bool appBar;

  const LayoutCustom(
      {Key key,
      this.child,
      this.type,
      this.safeArea = false,
      this.appBar = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      color: Colors.white,
      width: size.width,
      child: buildLayout(),
    );
  }

  Widget buildLayout() {
    Widget render;
    var component = child;

    if (safeArea) {
      component = SafeArea(child: child);
    }

    if (type != null) {
      var list = [component];
      switch (type) {
        case 1:
          list = [
            SvgStack(
              name: 'layout1_header',
              alignment: Alignment.topRight,
            ),
            SvgStack(
              name: 'layout1_footer',
              alignment: Alignment.bottomLeft,
            ),
            component,
          ];
          break;
        default:
      }
      if (appBar) {
        list.insert(list.length - 2, AppBarCustom());
      }
      render = Stack(children: <Widget>[...list]);
    }
    return render;
  }
}
