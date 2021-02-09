import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/landing/components/topLogo.dart';
import 'package:pages/pages/signin/components/centerWidgets.dart';
import 'package:pages/pages/signin/components/signInBottomWidgets.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        elevation: 0.0,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          TopLogo(),
          CenterWidgets(),
          SignInBottomWidgets(),
        ],
      ),
    );
  }
}
