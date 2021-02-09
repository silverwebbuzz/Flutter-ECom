import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class TopLogo extends StatelessWidget {
  const TopLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.shopping_bag,
              size: 160.0,
              color: kPrimaryColor,
            ),
            // Text(
            //   'E-Commerce',
            //   style: kTitleTextStyle,
            // ),
          ],
        ),
      ),
    );
  }
}