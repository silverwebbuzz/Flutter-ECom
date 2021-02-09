import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/address.dart/address.dart';

class CartBottomBar extends StatelessWidget {
  const CartBottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            child: Text(
              "Total : \$950",
              textAlign: TextAlign.center,
              style: kSubTextStyle,
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: kHeight,
            child: FlatButton(
              padding: EdgeInsets.only(
                top: kLessPadding,
                bottom: kLessPadding,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(kRadius),
              ),
              color: kPrimaryColor,
              textColor: kWhiteColor,
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DeliveryAddress())),
              child: Text(
                'Pay',
                style: TextStyle(
                  fontSize: kSize,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
