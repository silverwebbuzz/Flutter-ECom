import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class HeaderTextContainer extends StatelessWidget {
  final Widget child;
  const HeaderTextContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(
        top: kLess,
        bottom: kLess,
        left: kLessPadding,
        right: kLessPadding,
      ),
      child: child,
    );
  }
}
