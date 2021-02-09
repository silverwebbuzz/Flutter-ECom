import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class StickyLabel extends StatelessWidget {
  final String text;
  const StickyLabel({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(
        left: kDefaultPadding,
        top: kFixPadding,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: kLightColor.withOpacity(0.4),
          fontSize: 20.0,
        ),
      ),
    );
  }
}
