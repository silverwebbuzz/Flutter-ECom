import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/signup/components/textFieldContainer.dart';

class TextFieldNumber extends StatelessWidget {
  final String hintText;
  final IconData icon;
  const TextFieldNumber({
    Key key, this.hintText, this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        cursorColor: kPrimaryColor,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}