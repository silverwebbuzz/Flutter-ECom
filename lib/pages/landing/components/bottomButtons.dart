import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/landing/components/outlineDefaultButton.dart';
import 'package:pages/pages/signin/signin.dart';
import 'package:pages/pages/signup/signup.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({
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
            OutlineDefaultButton(
              name: 'Sign Up',
              press: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUp())),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            OutlineDefaultButton(
              name: 'Sign In',
              press: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignIn())),
            ),
          ],
        ),
      ),
    );
  }
}
