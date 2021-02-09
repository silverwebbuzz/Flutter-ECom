import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/landing/components/bottomButtons.dart';
import 'package:pages/pages/landing/components/centerTagLine.dart';
import 'package:pages/pages/landing/components/topLogo.dart';

class Landing extends StatefulWidget {
  Landing({Key key}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
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
          CenterTagLine(),
          BottomButtons(),
        ],
      ),
    );
  }
}
