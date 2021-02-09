import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class SaleBox extends StatelessWidget {
  final Widget saleBanner, saleProducts;
  const SaleBox({
    Key key,
    this.saleBanner,
    this.saleProducts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kLessPadding,
        bottom: kLess,
      ),
      padding: EdgeInsets.only(
        top: kLessPadding,
        bottom: kLessPadding,
        left: kRadius,
        right: kRadius,
      ),
      color: kPrimaryColor,
      height: 400.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          saleProducts,
        ],
      ),
    );
  }
}
