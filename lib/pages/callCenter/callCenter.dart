import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/account/components/backButton.dart';
import 'package:pages/pages/callCenter/components/subTitle.dart';
import 'package:pages/pages/chat/chat.dart';
import 'package:pages/pages/message/emptySection.dart';
import 'package:pages/pages/signup/components/defaultButton.dart';

class CallCenter extends StatefulWidget {
  CallCenter({Key key}) : super(key: key);

  @override
  _CallCenterState createState() => _CallCenterState();
}

class _CallCenterState extends State<CallCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: kWhiteColor,
        iconTheme: IconThemeData(
          color: kPrimaryColor,
        ),
        title: Text(
          'Call Center',
          style: TextStyle(color: kPrimaryColor),
        ),
        leading: CustomBackButton(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EmptySection(
              image: callCenter,
              emptyMsg: "We're Happy to Help You!",
            ),
            SubTitle(
              text: 'If you have complain about the product chat me',
            ),
            DefaultButton(
              name: 'Chat Me',
              press: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Chat())),
            ),
          ],
        ),
      ),
    );
  }
}
