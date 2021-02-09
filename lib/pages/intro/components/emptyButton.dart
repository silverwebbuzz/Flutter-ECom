import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class EmptyButton extends StatelessWidget {
  const EmptyButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        padding: const EdgeInsets.only(
            top: kDefaultPadding, bottom: kDefaultPadding),
        textColor: kPrimaryColor,
        onPressed: null,
        child: Text("".toUpperCase()),
      );
  }
}