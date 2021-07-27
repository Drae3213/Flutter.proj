import 'package:flutter/material.dart';
import 'package:kicks_for_nerds/assets/constants.dart';
import 'package:kicks_for_nerds/assets/variables.dart';
import 'package:kicks_for_nerds/components/reusable_buttons.dart';
import 'package:kicks_for_nerds/components/stroke_button.dart';
import 'package:kicks_for_nerds/components/custom_back_button.dart';
import 'package:kicks_for_nerds/components/under_button_txt.dart';

class FirstRegisterPage extends StatefulWidget {
  @override
  _FirstRegisterPageState createState() => _FirstRegisterPageState();
}

class _FirstRegisterPageState extends State<FirstRegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBGClr,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomBackButton(),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 36, 0, 36),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Register',
                    style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 36,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            StrokeButton(
              txt: kUserTxt,
            ),
            StrokeButton(
              txt: kPasswordTxt,
            ),
            StrokeButton(
              txt: kEmailTxt,
            ),
            StrokeButton(
              txt: kNumberTxt,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 12,
              ),
              child: BiggerButton(
                routePage: '/regtwo',
                title: 'Next',
                buttonHeight: vNormalButtonHeight,
              ),
            ),
            UnderButtonTxt(
              txt: 'Already have an account?',
              routeName: '/log',
            ),
            SizedBox(
              height: 134,
            ),
          ],
        ),
      ),
    );
  }
}
