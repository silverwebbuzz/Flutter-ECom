import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/about/aboutHead.dart';
import 'package:pages/pages/about/descSection.dart';
import 'package:pages/pages/account/components/backButton.dart';

class About extends StatefulWidget {
  About({Key key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
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
          'About Application',
          style: TextStyle(color: kPrimaryColor),
        ),
        leading: CustomBackButton(),
      ),
      body: Column(
        children: [
          AboutHead(
            title: 'E-Commerce',
            subtitle: 'UI KIT E-Commerce',
            enable: false,
          ),
          Divider(),
          DescSection(
            text:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          ),
          DescSection(
            text:
                "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          ),
        ],
      ),
    );
  }
}
