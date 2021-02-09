import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class RecommendItems extends StatelessWidget {
  final double heights, radius, top, bottom, left, right;
  final String image, title;
  final Color color;
  const RecommendItems({
    Key key, this.heights, this.radius, this.image, this.title, this.color, this.top, this.bottom, this.left, this.right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: top,
        bottom: bottom,
        left: left,
        right: right,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: kWhiteColor,
        border: Border.all(color: kAccentColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: heights,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radius),
                topRight: Radius.circular(radius),
              ),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: kLessPadding,
              right: kLessPadding,
              top: kLess,
            ),
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: kDarkColor.withOpacity(0.8),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: kLessPadding,
              right: kLessPadding,
            ),
            child: Text('\$200'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: kLessPadding,
              right: kLessPadding,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '4.8',
                          style: TextStyle(
                            color: kDarkColor.withOpacity(0.4),
                          ),
                        ),
                        WidgetSpan(
                          child: Icon(
                            Icons.star,
                            size: 14.0,
                            color: kOrangeColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  '923 Sale',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: kDarkColor.withOpacity(0.4),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}