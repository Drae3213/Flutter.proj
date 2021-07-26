import 'package:flutter/material.dart';
import 'package:kicks_for_nerds/assets/constants.dart';
import 'reusable_card.dart';
import 'toggle_bold.dart';
import 'txt_fonts.dart';
import 'package:kicks_for_nerds/assets/enums.dart';
import 'package:kicks_for_nerds/assets/lists.dart';

class SmallButton extends StatefulWidget {
  const SmallButton({Key key, @required this.title, this.routePage})
      : super(key: key);

  final String routePage;
  final String title;

  @override
  _SmallButtonState createState() => _SmallButtonState();
}

class _SmallButtonState extends State<SmallButton> {
  font fontType;

  bool hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(
          () {
            hasBeenPressed = !hasBeenPressed;
          },
        );
        Navigator.pushNamed(
          context,
          widget.routePage,
        );
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kRadiusNumber),
        ),
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: hasBeenPressed ? gradClr : solidGrad),
          borderRadius: BorderRadius.circular(kRadiusNumber),
        ),
        child: ReusableCard(
          cardChild: ToggleBold(
            fontType: hasBeenPressed ? font.bold : font.light,
            boldTxtFont: BoldTxtFont18(
              text: widget.title,
            ),
            lightTxtFont: LightTxtFont18(
              text: widget.title,
            ),
          ),
          height: kSmallButtonHeight,
          width: kSmallButtonWidth,
        ),
      ),
    );
  }
}
