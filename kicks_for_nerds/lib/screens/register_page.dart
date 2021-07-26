import 'package:flutter/material.dart';
import 'package:kicks_for_nerds/assets/constants.dart';
import 'package:kicks_for_nerds/components/reusable_card.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBGClr,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ReusableCard(
              marginSize: kContentMargin,
              baseColour: kBaseWidgetColor,
              width: 327,
              height: 50,
              cardChild: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(
                    24,
                    30,
                    24,
                    0,
                  ),
                  hintText: 'Name',
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
