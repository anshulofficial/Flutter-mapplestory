import 'dart:math';

import 'package:flutter/material.dart';

class BlueSnail extends StatelessWidget {
  final int snailSpriteCount; // between 1-4
  final String snailDirection;
  final int deadSnailSprite;

  BlueSnail({required this.snailSpriteCount, required this.snailDirection, required this.deadSnailSprite});



  @override
  Widget build(BuildContext context) {
    if (snailDirection == 'left') {
      return Container(
        alignment: Alignment.bottomCenter,
        height: 50,
        width: 50,
        child: Image.asset('lib/images/snail' +
            snailSpriteCount.toString() +
            '.png'),
      );
    } else {
      return Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(pi),
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 50,
            child: Image.asset('lib/images/snail' +
                snailSpriteCount.toString() +
                '.png'),
          ),
      );
    }
  }
}
