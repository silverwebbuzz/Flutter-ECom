import 'package:flutter/material.dart';
import 'package:pages/pages/BottomNavBar/bottomNavBar.dart';
import 'package:pages/pages/signup/components/clearFullButton.dart';
import 'package:pages/pages/signup/components/defaultButton.dart';
import 'package:pages/pages/signup/signup.dart';

class SignInBottomWidgets extends StatelessWidget {
  const SignInBottomWidgets({
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
            ClearFullButton(
              darkText: "Don't have an account?",
              colorText: ' SignUp.',
              press: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUp())),
            ),
            DefaultButton(
              name: 'Sign In',
              press: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BottomNavBar())),
            ),
          ],
        ),
      ),
    );
  }
}
