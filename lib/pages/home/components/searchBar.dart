import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.search,
          color: kPrimaryColor,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            'Search...',
            style: TextStyle(
              color: kLightColor,
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    );
  }
}
