import 'package:flutter/material.dart';

class MyCash extends StatelessWidget {
  final int cashSpriteStep;

  MyCash({required this.cashSpriteStep});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'lib/images/cash' + (cashSpriteStep % 4 + 1).toString() + '.png',
        fit: BoxFit.fill,
      ),
    );
  }
}