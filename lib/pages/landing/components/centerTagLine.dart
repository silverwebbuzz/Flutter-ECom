import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class CenterTagLine extends StatelessWidget {
  const CenterTagLine({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(left: 96.0, right: 96.0),
              child: Divider(
                color: kPrimaryColor,
                thickness: 1.5,
              ),
            ),
            Text(
              'Get Best Products in Ecommerce',
              style: kTitleTextStyle,
              ),
          ],
        ),
      ),
    );
  }
}