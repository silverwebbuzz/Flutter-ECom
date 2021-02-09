import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class DescSection extends StatelessWidget {
  final String text;
  const DescSection({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: kLessPadding,
        bottom: kLessPadding,
        left: kDefaultPadding,
        right: kDefaultPadding,
      ),
      child: Text(
        text,
        style: kSubTextStyle,
      ),
    );
  }
}