import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class ClearFullButton extends StatelessWidget {
  final String darkText, colorText;
  final Function press;
  const ClearFullButton({
    Key key,
    this.darkText,
    this.colorText,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: press,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: darkText,
              style: kDarkTextStyle,
            ),
            TextSpan(
              text: colorText,
              style: kTitleTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
