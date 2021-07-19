import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text('I am rich'),
          backgroundColor: Colors.amber[100],
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://www.clevergirlfinance.com/wp-content/uploads/2020/11/How-to-get-rich-from-nothing.jpg'),
          ),
        ),
      ),
    ),
  );
}
