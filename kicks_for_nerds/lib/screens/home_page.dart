import 'package:flutter/material.dart';
import 'package:kicks_for_nerds/assets/constants.dart';
import 'package:kicks_for_nerds/components/event_banner.dart';
import 'package:kicks_for_nerds/components/nav_bar.dart';
import 'package:kicks_for_nerds/components/reusable_card.dart';
import 'package:kicks_for_nerds/components/stories.dart';
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
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'images/cam_arrow.png',
                    height: kIconImageHeight,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'images/shop_arrow.png',
                    height: kIconImageHeight,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 11,
                children: List.generate(
                  12,
                  (index) {
                    return ReusableCard(
                      height: 190,
                      width: 158,
                      baseColour: kBaseWidgetColor,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}



// class HomePage extends StatefulWidget {
//   const HomePage({Key key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kBGClr,
//       body: Column(
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.fromLTRB(
//               24,
//               72,
//               24,
//               0,
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 GestureDetector(
//                   onTap: () {},
//                   child: Image.asset(
//                     'images/cam_arrow.png',
//                     height: kIconImageHeight,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {},
//                   child: Image.asset(
//                     'images/shop_arrow.png',
//                     height: kIconImageHeight,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Stories(),
//           EventBanner(),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
//               child: GridView.count(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 12,
//                 mainAxisSpacing: 11,
//                 children: List.generate(
//                   12,
//                   (index) {
//                     return ReusableCard(
//                       height: 190,
//                       width: 158,
//                       baseColour: kBaseWidgetColor,
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: NavBar(),
//     );
//   }
// }
