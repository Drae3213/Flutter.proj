import 'package:flutter/material.dart';
import 'package:kicks_for_nerds/assets/constants.dart';

// Bold font classes
class BoldTxtFont18 extends StatelessWidget {
  BoldTxtFont18({@required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: kFontColour,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

// Light font classes
class LightTxtFont18 extends StatelessWidget {
  LightTxtFont18({@required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: kFontColour,
        fontWeight: FontWeight.w100,
      ),
    );
  }
}
