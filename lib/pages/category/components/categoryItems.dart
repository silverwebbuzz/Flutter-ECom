import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class CategoryItems extends StatelessWidget {
  final double heights, radius, titleSize, amtSize;
  final String image, title, amount;
  final Color color;
  final widths, align, padding, decoration;
  
  const CategoryItems({
    Key key,
    this.heights,
    this.image,
    this.title,
    this.color,
    this.widths,
    this.radius,
    this.align,
    this.amount,
    this.titleSize,
    this.amtSize, this.padding, this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kLess),
      child: Stack(
        children: [
          Container(
            height: heights,
            width: widths,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              image: DecorationImage(
                // alignment: Alignment(0.0,-0.8),
                image: AssetImage(image),
                fit: BoxFit.cover,
                // colorFilter: ColorFilter.mode(color, BlendMode.softLight),
                colorFilter: ColorFilter.mode(color, BlendMode.hardLight),
              ),
            ),
          ),
          Align(
            alignment: align,
            child: Container(
              padding: padding,
              decoration: decoration,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: title,
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: titleSize,
                      ),
                    ),
                    TextSpan(
                      text: amount,
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: amtSize,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
