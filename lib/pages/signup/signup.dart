import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/landing/components/topLogo.dart';
import 'package:pages/pages/signup/components/bottomWidgets.dart';
import 'package:pages/pages/signup/components/centerTextFields.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
          CenterTextFields(),
          BottomWidgets(),
        ],
      ),
    );
  }
}