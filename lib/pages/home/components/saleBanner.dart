import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class SaleBanner extends StatelessWidget {
  final String image, sale, endDateLabel, endDate; 
  const SaleBanner({
    Key key, this.image, this.sale, this.endDateLabel, this.endDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125.0,
      color: kTransparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(image),
            height: 100.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: kDefaultPadding,
              bottom: kDefaultPadding,
            ),
            child: Text(
              sale,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: kShape,
                color: kWhiteColor,
              ),
            ),
          ),
          Text(
            endDateLabel,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: kFixPadding,
              color: kWhiteColor,
            ),
          ),
          Text(
            endDate,
            style: TextStyle(
              fontSize: kSize,
              color: kWhiteColor,
            ),
          ),
        ],
      ),
    );
  }
}