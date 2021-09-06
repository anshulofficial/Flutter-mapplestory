import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyBar extends StatelessWidget {
  var color;
  var child;
  int number; // out of 10

  MyBar({this.color, this.child, required this.number});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          color: color[100],
          height: 40,
          width: 200,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    height: 35,
                    width: number.toDouble(),
                    color: color[500],
                  ),
                ),
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}