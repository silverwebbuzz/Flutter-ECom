import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/signup/components/textFieldEmail.dart';
import 'package:pages/pages/signup/components/textFieldPassword.dart';
import 'package:pages/pages/signup/components/textFieldRounded.dart';

class CenterTextFields extends StatelessWidget {
  const CenterTextFields({
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
            TextFieldRounded(
              hintText: 'Full name',
              icon: Icons.person,
            ),
            SizedBox(height: kFixPadding,),
            TextFieldEmail(
              hintText: 'Email address',
              icon: Icons.mail,
            ),
            SizedBox(height: kFixPadding,),
            TextFieldPassword(
              hintText: 'Password',
              icon: Icons.lock,
            ),
            SizedBox(height: kFixPadding,),
            TextFieldPassword(
              hintText: 'Confirm password',
              icon: Icons.lock,
            ),
          ],
        ),
      ),
    );
  }
}