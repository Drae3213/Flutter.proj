import 'package:flutter/material.dart';
import 'package:kicks_for_nerds/assets/constants.dart';
import 'package:kicks_for_nerds/components/event_banner.dart';
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
      body: Expanded(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(minHeight: viewportConstraints.minHeight),
                child: Column(
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
                    Stories(),
                    EventBanner(),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                      child: SizedBox(
                        width: 375,
                        child: GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 11,
                          mainAxisSpacing: 12,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          children: List.generate(
                            12,
                            (index) {
                              return ReusableCard(
                                height: 90,
                                width: 158,
                                baseColour: kBaseWidgetColor,
                              );
                            },
                          ),
                        ),
                      ),
                    )
                        // NavBar(),
                        ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
