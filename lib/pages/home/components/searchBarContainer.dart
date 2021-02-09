import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/home/components/searchBar.dart';
import 'package:pages/pages/search/search.dart';

class SearchBarContainer extends StatelessWidget {
  const SearchBarContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => Search())),
      child: Container(
        height: 34,
        alignment: Alignment.center,
        padding: EdgeInsets.only(
          left: kFixPadding,
          right: kFixPadding,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: kWhiteColor,
        ),
        child: SearchBarWidget(),
      ),
    );
  }
}
