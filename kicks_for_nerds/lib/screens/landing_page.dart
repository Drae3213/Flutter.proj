import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kicks_for_nerds/constants.dart';
import 'package:kicks_for_nerds/components/reusable_card.dart';
import 'package:kicks_for_nerds/components/landing_page_nav.dart';
import 'package:kicks_for_nerds/components/txt_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

enum font {
  bold,
  light,
}

class _LandingPageState extends State<LandingPage> {
  font fontType;

  String _regLandingPgTxt = 'Register';
  String _logLandinPgTxt = 'Login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg_shoe_pic.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ReusableCard(
              marginSize: kTopContentMargin,
              height: 118,
              baseColour: Colors.white,
            ),
            // banner
            ReusableCard(
              // cardChild: Image.asset(
              //   'images/KFN_logo.png',
              // ),
              marginSize: EdgeInsets.only(
                left: 24,
                right: 24,
                top: 68,
              ),
              baseColour: kBlackCustomClr,
              height: 236,
            ),
            // nav
            LandingPageNav(
              cardChild: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ReusableCard(
                      cardChild: Center(
                        child: LightTxtFont18(
                          text: 'Login',
                        ),
                      ),
                      baseColour: kBlackCustomClr,
                      height: kSmallButtonHeight,
                      width: kSmallButtonWidth,
                      marginSize: kLeftContentMargin,
                    ),
                    GestureDetector(
                      onTap: () {
                        print(
                          'reg was pressed',
                        );
                        setState(
                          () {
                            fontType = font.bold;
                          },
                        );
                      },
                      child: ReusableCard(
                        cardChild: Center(
                          child: fontType == font.bold
                              ? BoldTxtFont18(
                                  text: _regLandingPgTxt,
                                )
                              : LightTxtFont18(
                                  text: _regLandingPgTxt,
                                ),
                        ),
                        baseColour: kBlackCustomClr,
                        height: kSmallButtonHeight,
                        width: kSmallButtonWidth,
                        marginSize: kRightContentMargin,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
