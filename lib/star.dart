import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyStar extends StatelessWidget {
  int number;

  MyStar({required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('lib/images/star' + number.toString() + '.png'),
    );
  }
}
