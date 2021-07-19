import 'package:flutter/material.dart';

//the starting point for all our flutter apps
void main() {
  runApp(IamPoor());
}

class IamPoor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          title: Text('I am poor'),
          backgroundColor: Colors.pink[400],
        ),
        body: Image.asset('images/mkm.jpg'),
      ),
    );
  }
}
