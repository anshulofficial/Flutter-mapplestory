import 'dart:math';
import 'package:flutter/material.dart';

class MyBoy extends StatelessWidget {
  final int boySpriteCount; // between 1~2
  final String boyDirection;
  final int attackBoySpriteCount;
  final bool underAttack;
  final bool currentlyLeveling;
  final bool smile;

  MyBoy({
    required this.boySpriteCount,
    required this.boyDirection,
    required this.attackBoySpriteCount,
    required this.currentlyLeveling,
    required this.underAttack,
    required this.smile,
  });

  @override
  Widget build(BuildContext context) {
    int directionAsInt = 1;

    if (boyDirection == 'right') {
      directionAsInt = 1;
    } else if (boyDirection == 'left') {
      directionAsInt = 0;
    } else {
      directionAsInt = 1;
    }

    if (smile == true) {
      return Container(
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(pi * directionAsInt),
          child: Image.asset(
            'lib/images/boy2.png',
          ),
        ),
      );
    } else if (attackBoySpriteCount == 0) {
      return Container(
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(pi * directionAsInt),
          child: Image.asset(
            'lib/images/standboy' +
                (boySpriteCount % 2 + 1).toString() +
                '.png',
            color: underAttack
                ? Colors.red
                : (currentlyLeveling ? Colors.yellow[200] : null),
          ),
        ),
      );
    } else {
      return Container(
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(pi * directionAsInt),
          child: Image.asset(
            'lib/images/attackboy' + (attackBoySpriteCount).toString() + '.png',
          ),
        ),
      );
    }
  }
}