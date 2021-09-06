import 'dart:math';

import 'package:flutter/material.dart';

class MyTeddy extends StatelessWidget {
  final int teddySpriteCount; // between 1-25
  final String teddyDirection;

  MyTeddy({required this.teddySpriteCount, required this.teddyDirection});



  @override
  Widget build(BuildContext context) {
    if (teddyDirection == 'left') {
      return Container(
        alignment: Alignment.bottomCenter,
        height: 50,
        width: 50,
        child: Image.asset('lib/images/teddy' +
            teddySpriteCount.toString() +
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
          child: Image.asset('lib/images/teddy' +
              teddySpriteCount.toString() +
              '.png'),
        ),
      );
    }
  }
}
