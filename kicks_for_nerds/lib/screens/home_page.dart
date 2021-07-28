import 'package:flutter/material.dart';
import 'package:kicks_for_nerds/assets/constants.dart';
import 'package:kicks_for_nerds/components/story_frame.dart';

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
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(
              24,
              72,
              24,
              0,
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
          Container(
            margin: EdgeInsets.fromLTRB(
              0,
              36,
              0,
              36,
            ),
            height: 72,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(
                  width: 24,
                ),
                StoryFrame(),
                StoryFrame(),
                StoryFrame(),
                StoryFrame(),
                StoryFrame(),
              ],
            ),
          ),
          // NavBar(),
        ],
      ),
    );
  }
}
