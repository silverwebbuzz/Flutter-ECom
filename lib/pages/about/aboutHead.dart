import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class AboutHead extends StatelessWidget {
  final String title, subtitle;
  final Function onTap;
  final bool enable;
  const AboutHead({
    Key key,
    this.title,
    this.subtitle,
    this.onTap,
    this.enable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          image: DecorationImage(
            image: AssetImage(bgProfile),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(color: kDarkColor),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: kLightColor),
      ),
      onTap: onTap,
      enabled: enable,
    );
  }
}
