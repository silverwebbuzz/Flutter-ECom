import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class OutlineDefaultButton extends StatelessWidget {
  final String name;
  final Function press;
  const OutlineDefaultButton({
    Key key,
    this.name,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
        right: kDefaultPadding,
        left: kDefaultPadding,
      ),
      child: OutlineButton(
        padding: EdgeInsets.only(top: kLessPadding, bottom: kLessPadding),
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(kShape),
        ),
        borderSide: BorderSide(
          color: kPrimaryColor,
          style: BorderStyle.solid,
        ),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        highlightedBorderColor: kPrimaryColor,
        textColor: kPrimaryColor,
        onPressed: press,
        child: Text(name.toUpperCase()),
      ),
    );
  }
}