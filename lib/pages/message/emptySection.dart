import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class EmptySection extends StatelessWidget {
  final String emptyMsg, image;
  const EmptySection({
    Key key,
    this.emptyMsg,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(image),
            height: 150.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: kLessPadding),
            child: Text(
              emptyMsg,
              style: kDarkTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}