import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/forgot/components/forgotBottomWidgets.dart';
import 'package:pages/pages/forgot/components/forgotCenterWidgets.dart';
import 'package:pages/pages/landing/components/topLogo.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({Key key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
          ForgotCenterWidgets(),
          ForgotBottomWidgets(),
        ],
      ),
    );
  }
}