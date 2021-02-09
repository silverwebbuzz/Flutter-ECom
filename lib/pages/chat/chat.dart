import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/account/components/backButton.dart';
import 'package:pages/pages/message/emptySection.dart';

class Chat extends StatefulWidget {
  Chat({Key key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
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
          'Chat',
          style: TextStyle(color: kPrimaryColor),
        ),
        leading: CustomBackButton(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EmptySection(
              image: conversation,
              emptyMsg: 'No message yet',
            ),
          ],
        ),
      ),
      bottomNavigationBar: Material(
        color: kWhiteColor,
        elevation: 4.0,
        child: Container(
          padding: EdgeInsets.only(
            top: kLess,
            bottom: kLess,
          ),
          child: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.add,
                  color: kPrimaryColor,
                ),
                onPressed: () {},
              ),
              Expanded(
                child: Container(
                  // height: kHeight,
                  margin: EdgeInsets.only(
                    left: kLess,
                    right: kLess,
                  ),
                  padding: EdgeInsets.only(
                    left: kLessPadding,
                    right: kLessPadding,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: kAccentColor,
                    ),
                    color: kWhiteColor,
                  ),
                  child: TextField(
                    cursorColor: kPrimaryColor,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter some text to send a message',
                      hintStyle: TextStyle(
                        color: kLightColor,
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.mail,
                  color: kPrimaryColor,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
