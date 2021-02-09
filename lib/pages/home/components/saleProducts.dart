import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class SaleProducts extends StatelessWidget {
  const SaleProducts({
    Key key,
    @required this.image,
    @required this.title,
    @required this.oldPrice,
    @required this.newPrice,
    @required this.rating,
    @required this.location,
    @required this.stock,
  }) : super(key: key);

  final String image;
  final String title;
  final String oldPrice;
  final String newPrice;
  final String rating;
  final String location;
  final String stock;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125.0,
      color: kWhiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(image),
            height: 180.0,
            width: 130.0,
            fit: BoxFit.cover,
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
              maxLines: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: kLessPadding,
              right: kLessPadding,
              top: kLess,
            ),
            child: Text(
              oldPrice,
              style: TextStyle(
                color: kDarkColor.withOpacity(0.4),
                decoration: TextDecoration.lineThrough,
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
              newPrice,
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: kLessPadding,
              right: kLessPadding,
              top: kLess,
            ),
            child: Text.rich(
              TextSpan(
                children: [
                  WidgetSpan(
                    child: Icon(
                      Icons.star,
                      size: 16.0,
                      color: kOrangeColor,
                    ),
                  ),
                  TextSpan(
                    text: rating,
                    style: TextStyle(
                      color: kDarkColor.withOpacity(0.4),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: kLessPadding,
              right: kLessPadding,
              top: kLess,
            ),
            child: Text.rich(
              TextSpan(
                children: [
                  WidgetSpan(
                    child: Icon(
                      Icons.pin_drop,
                      size: 16.0,
                      color: kOrangeColor,
                    ),
                  ),
                  TextSpan(
                    text: location,
                    style: TextStyle(
                      color: kDarkColor.withOpacity(0.4),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: kLessPadding,
              right: kLessPadding,
              top: kLess,
            ),
            child: Text(stock),
          ),
        ],
      ),
    );
  }
}
