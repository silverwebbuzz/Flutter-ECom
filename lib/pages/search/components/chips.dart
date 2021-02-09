import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class Chips extends StatelessWidget {
  final String label;
  const Chips({
    Key key,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: kLessPadding),
      child: Chip(
        label: Text(
          label,
          style: TextStyle(
            color: kDarkColor.withOpacity(0.8),
          ),
        ),
        backgroundColor: kWhiteColor,
        shadowColor: kDarkColor,
        shape: StadiumBorder(
          side: BorderSide(
            width: kLess,
            color: kLightColor.withOpacity(0.1),
          ),
        ),
      ),
    );
  }
}