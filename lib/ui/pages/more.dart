import 'package:custom1/ui/template/layout.dart';
import 'package:flutter/material.dart';

class More extends StatelessWidget {
  const More({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // backgroundColor: Color(0x44000000),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.grey, size: 30,),
              onPressed: () {
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).backButtonTooltip,
            );
          },
        ),
        elevation: 0,
        title: Text("Title"),
      ),
      body: LayoutCustom(
        safeArea: true,
        type: 1,
        // appBar: true,
        child: Center(
          child: Text('More'),
        ),
      ),
    );
  }
}
