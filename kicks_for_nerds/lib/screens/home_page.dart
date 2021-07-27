import 'package:flutter/material.dart';
import 'package:kicks_for_nerds/assets/constants.dart';
import 'package:kicks_for_nerds/components/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBGClr,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(
                24,
                72,
                24,
                36,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(
                    'images/cam_arrow.png',
                    height: kIconImageHeight,
                  ),
                  Image.asset(
                    'images/shop_arrow.png',
                    height: kIconImageHeight,
                  ),
                ],
              ),
            ),
            NavBar(),
            // ListView(
            //   children: <Widget>[],
            // ),
          ],
        ),
      ),
    );
  }
}
