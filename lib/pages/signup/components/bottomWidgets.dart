import 'package:flutter/material.dart';
import 'package:pages/pages/BottomNavBar/bottomNavBar.dart';
import 'package:pages/pages/signin/signin.dart';
import 'package:pages/pages/signup/components/clearFullButton.dart';
import 'package:pages/pages/signup/components/defaultButton.dart';

class BottomWidgets extends StatelessWidget {
  const BottomWidgets({
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
            ClearFullButton(
              darkText: 'Already have an account?',
              colorText: ' SignIn.',
              press: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignIn())),
            ),
            DefaultButton(
              name: 'Sign Up',
              press: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BottomNavBar())),
            ),
          ],
        ),
      ),
    );
  }
}
