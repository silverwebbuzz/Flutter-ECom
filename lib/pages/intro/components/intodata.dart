import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pages/constant.dart';

class IntroData extends StatelessWidget {
  const IntroData({
    Key key,
    this.image,
    this.head,
    this.desc,
  }) : super(key: key);
  final String image, head, desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 0,
          child: Stack(
            children: <Widget>[
              SvgPicture.asset(
                whiteBG,
                height: 550.0,
                color: kWhiteColor,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 250,
                right: 0,
                left: 0,
                child: Image(
                  image: AssetImage(image),
                  height: 150.0,
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Text(
              head,
              textAlign: TextAlign.center,
              style: kHeadingTextStyle,
            ),
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Text(
                desc,
                textAlign: TextAlign.center,
                style: kSubTextStyle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}