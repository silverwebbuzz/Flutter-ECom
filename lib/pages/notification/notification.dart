import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/about/aboutHead.dart';
import 'package:pages/pages/account/components/backButton.dart';

class Notifications extends StatefulWidget {
  Notifications({Key key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: kWhiteColor,
        iconTheme: IconThemeData(
          color: kPrimaryColor,
        ),
        title: Text(
          'Notifications',
          style: TextStyle(color: kPrimaryColor),
        ),
        leading: CustomBackButton(),
      ),
      body: ListView.separated(
        padding: EdgeInsets.zero,
        itemCount: 15,
        itemBuilder: (context, index) {
          return AboutHead(
            title: 'E-Commerce',
            subtitle: 'Thanks for download E-Commerce app.',
            enable: true,
            onTap: () => this.setState(() {
              snackBarMsg(context, 'Test Notification');
            }),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }

  snackBarMsg(BuildContext context, String text) {
    var sb = SnackBar(
      elevation: 0.0,
      // behavior: SnackBarBehavior.fixed,
      content: Text(text),
      duration: new Duration(seconds: 3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
      ),
      //backgroundColor: Colors.redAccent,
      action: SnackBarAction(
        textColor: Color(0xFFFAF2FB),
        label: 'OK',
        onPressed: () {},
      ),
    );
    _scaffoldKey.currentState.showSnackBar(sb);
    // Scaffold.of(context).showSnackBar(sb);
  }
}
