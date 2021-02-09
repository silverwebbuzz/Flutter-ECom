import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/forgot/forgot.dart';
import 'package:pages/pages/signup/components/clearFullButton.dart';
import 'package:pages/pages/signup/components/textFieldEmail.dart';
import 'package:pages/pages/signup/components/textFieldPassword.dart';

class CenterWidgets extends StatelessWidget {
  const CenterWidgets({
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
            TextFieldEmail(
              hintText: 'Email address',
              icon: Icons.mail,
            ),
            SizedBox(
              height: kFixPadding,
            ),
            TextFieldPassword(
              hintText: 'Password',
              icon: Icons.lock,
            ),
            SizedBox(
              height: kFixPadding,
            ),
            ClearFullButton(
              darkText: 'I forgot my',
              colorText: ' Password.',
              press: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ForgotPassword())),
            ),
          ],
        ),
      ),
    );
  }
}
