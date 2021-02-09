// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:pages/constant.dart';
import 'package:pages/pages/signup/components/clearFullButton.dart';
import 'package:pages/pages/signup/components/defaultButton.dart';

class ForgotBottomWidgets extends StatelessWidget {
  const ForgotBottomWidgets({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClearFullButton(
              darkText: 'Back to',
              colorText: ' SignIn.',
              press: () => Navigator.of(context).pop(),
            ),
            // Text.rich(
            //   TextSpan(
            //     children: [
            //       TextSpan(
            //         text: 'Back to',
            //         style: kDarkTextStyle,
            //       ),
            //       TextSpan(
            //         recognizer: TapGestureRecognizer()
            //           ..onTap = () => Navigator.of(context).pop(),
            //         text: ' SignIn',
            //         style: kTitleTextStyle,
            //       ),
            //     ],
            //   ),
            // ),
            DefaultButton(
              name: 'Submit',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
