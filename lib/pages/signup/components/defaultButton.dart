import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class DefaultButton extends StatelessWidget {
  final String name;
  final Function press;
  const DefaultButton({
    Key key,
    this.name,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding,
      ),
      margin: EdgeInsets.only(top: kDefaultPadding, bottom: kDefaultPadding),
      child: FlatButton(
        padding: EdgeInsets.only(
          top: kLessPadding,
          bottom: kLessPadding,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(kShape),
        ),
        color: kPrimaryColor,
        textColor: kWhiteColor,
        onPressed: press,
        child: Text(name.toUpperCase()),
      ),
    );
  }
}