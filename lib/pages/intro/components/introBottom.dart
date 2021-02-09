import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/intro/components/clearDefaultButton.dart';
import 'package:pages/pages/intro/components/emptyButton.dart';
import 'package:pages/pages/landing/landing.dart';

class IntroBottom extends StatelessWidget {
  const IntroBottom({
    Key key,
    @required int currentPage,
    @required this.introData,
  })  : _currentPage = currentPage,
        super(key: key);

  final int _currentPage;
  final List<Map<String, String>> introData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        (_currentPage == 0 || _currentPage == 1)
            ? ClearDefaultButton(
                name: 'Skip',
                press: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Landing())),
              )
            : EmptyButton(),
        Container(
          width: MediaQuery.of(context).size.width / 2,
          padding:
              EdgeInsets.only(top: kDefaultPadding, bottom: kDefaultPadding),
          child: LinearProgressIndicator(
            backgroundColor: kWhiteColor,
            value: (_currentPage + 1) / (introData.length + 0),
            valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor),
          ),
        ),
        (_currentPage == 2)
            ? ClearDefaultButton(
                name: 'Done',
                press: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Landing())),
              )
            : EmptyButton(),
      ],
    );
  }
}
