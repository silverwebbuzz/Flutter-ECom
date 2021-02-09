import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class SubTitle extends StatelessWidget {
  final String text;
  const SubTitle({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
        top: kFixPadding,
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: kSubTextStyle,
      ),
    );
  }
}