import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class DefaultIconButton extends StatelessWidget {
  final IconData icon;
  final Function press;
  const DefaultIconButton({
    Key key,
    this.icon,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: press,
      icon: Icon(
        icon,
        color: kWhiteColor,
      ),
    );
  }
}