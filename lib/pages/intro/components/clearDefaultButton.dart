import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class ClearDefaultButton extends StatelessWidget {
  final String name;
  final Function press;
  const ClearDefaultButton({
    Key key,
    this.name,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding:
          const EdgeInsets.only(top: kDefaultPadding, bottom: kDefaultPadding),
      textColor: kPrimaryColor,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onPressed: press,
      child: Text(name.toUpperCase()),
    );
  }
}