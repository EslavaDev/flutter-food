
import 'package:flutter/material.dart';
import 'package:custom1/src/card.dart';

class Stataless extends StatelessWidget {
  const Stataless({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                MyCard(
                    title: "I Love Flutter",
                    icon: Icons.favorite,
                    iconColor: Colors.redAccent),
                MyCard(
                    title: "I Like This Video",
                    icon: Icons.thumb_up,
                    iconColor: Colors.blueAccent),
                MyCard(
                    title: "Next Video",
                    icon: Icons.queue_play_next,
                    iconColor: Colors.brown),
              ],
            ),
          ),
        );
  }
}