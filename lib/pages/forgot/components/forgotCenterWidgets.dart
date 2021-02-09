import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/signup/components/textFieldEmail.dart';

class ForgotCenterWidgets extends StatelessWidget {
  const ForgotCenterWidgets({
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
            Container(
              padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
              ),
              child: Text(
                "Enter your registered email address. We'll send you an email to reset your password.",
                style: kDarkTextStyle,
              ),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            TextFieldEmail(
              hintText: 'Email address',
              icon: Icons.mail,
            ),
          ],
        ),
      ),
    );
  }
}