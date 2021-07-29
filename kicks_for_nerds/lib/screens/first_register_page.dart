import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kicks_for_nerds/assets/constants.dart';
import 'package:kicks_for_nerds/assets/variables.dart';
import 'package:kicks_for_nerds/components/reusable_buttons.dart';
import 'package:kicks_for_nerds/components/stroke_button.dart';
import 'package:kicks_for_nerds/components/custom_back_button.dart';
import 'package:kicks_for_nerds/components/under_button_txt.dart';
import 'package:kicks_for_nerds/services/auth.dart';
import 'package:kicks_for_nerds/assets/variables.dart';

class FirstRegisterPage extends StatefulWidget {
  @override
  _FirstRegisterPageState createState() => _FirstRegisterPageState();
}

class _FirstRegisterPageState extends State<FirstRegisterPage> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String error = '';
  String username = '';
  String phone = '';
  final AuthService _auth = AuthService();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBGClr,
      body: SafeArea(
        child: Form(
          key: _formKey,
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
                onChangedProperty: (val) {
                  setState(
                    () => username = val.trim(),
                  );
                },
                txt: kUserTxt,
              ),
              StrokeButton(
                onChangedProperty: (val) {
                  setState(
                    () => password = val.trim(),
                  );
                },
                txt: kPasswordTxt,
              ),
              StrokeButton(
                onChangedProperty: (val) {
                  setState(
                    () => email = val.trim(),
                  );
                },
                txt: kEmailTxt,
              ),
              StrokeButton(
                onChangedProperty: (val) {
                  setState(
                    () => phone = val.trim(),
                  );
                },
                txt: kNumberTxt,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 12,
                ),
                child: BiggerButton(
                  onPressed: () async {
                    if (_formKey.currentState.validate()) {
                      print(password);
                      print(email);

                      dynamic result =
                          await _auth.registerFirebaseUser(email, password);
                      if (result == null) {
                        setState(() => error = 'error, coukd not sign in user');
                      }
                    } else {
                      setState(
                        () {
                          error = 'please supply a valid email';
                          loading = false;
                        },
                      );
                    }
                  },
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
      ),
    );
  }
}
