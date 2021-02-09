import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/BottomNavBar/bottomNavBar.dart';
import 'package:pages/pages/callCenter/components/subTitle.dart';
import 'package:pages/pages/message/emptySection.dart';
import 'package:pages/pages/signup/components/defaultButton.dart';

class Success extends StatefulWidget {
  Success({Key key}) : super(key: key);

  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EmptySection(
            image: success,
            emptyMsg: 'Successful !!',
          ),
          SubTitle(
            text: 'Your payment was done successfully!',
          ),
          DefaultButton(
            name: 'Ok',
            press: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => BottomNavBar())),
          ),
        ],
      ),
    );
  }
}
