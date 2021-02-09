import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class HeaderText extends StatelessWidget {
  final String text;
  const HeaderText({
    Key key, this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: kDarkTextStyle,
    );
  }
}