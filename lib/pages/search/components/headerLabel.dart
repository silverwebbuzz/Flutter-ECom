import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class HeaderLabel extends StatelessWidget {
  final String text;
  const HeaderLabel({
    Key key, this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
        top: kDefaultPadding,
        bottom: kDefaultPadding,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: kLightColor,
          fontSize: 28.0,
        ),
      ),
    );
  }
}