import 'package:flutter/material.dart';
import 'package:kicks_for_nerds/assets/constants.dart';
import 'package:kicks_for_nerds/assets/variables.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: vNormalButtonHeight,
      width: vBiggerButtonWidth,
      decoration: BoxDecoration(
        color: kBaseWidgetColor,
        borderRadius: BorderRadius.circular(
          kRadiusNumber,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'images/home_icon.png',
            height: kNavIconImageHeight,
          ),
          Image.asset(
            'images/search_icon.png',
            height: kNavIconImageHeight,
          ),
          Image.asset(
            'images/post_icon.png',
            height: kNavIconImageHeight,
          ),
          Image.asset(
            'images/dm_icon.png',
            height: kNavIconImageHeight,
          ),
          CircleAvatar(
            radius: 10,
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
