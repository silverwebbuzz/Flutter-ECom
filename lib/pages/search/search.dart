import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/account/components/backButton.dart';
import 'package:pages/pages/search/components/chips.dart';
import 'package:pages/pages/search/components/headerLabel.dart';
import 'package:pages/pages/search/components/recommendItems.dart';
import 'package:pages/pages/search/components/recommendView.dart';
import 'package:pages/pages/search/components/stickyLabel.dart';

class Search extends StatefulWidget {
  Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<String> _chipsMobile = [
    'IPhone',
    'Samsung',
    'OnePus',
    'RealMe',
    'Xiomi',
    'Oppo',
    'Vivo',
  ];
  List<String> _chipsCategory = [
    'Mobiles',
    'Cloths',
    'Electronics',
    'Furnitures',
    'Shoes',
    'Laptops',
    'Watches',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: kWhiteColor,
        iconTheme: IconThemeData(
          color: kPrimaryColor,
        ),
        title: Text(
          'Search',
          style: TextStyle(color: kPrimaryColor),
        ),
        leading: CustomBackButton(),
      ),
      body: Column(
        children: [
          HeaderLabel(
            text: 'Hello, i am E-Commerce. What would you like to search?',
          ),
          Container(
            padding: const EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
            ),
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
            ),
            decoration: BoxDecoration(
              color: kWhiteColor,
              border: Border.all(
                width: 4.0,
                color: kAccentColor,
              ),
            ),
            child: TextField(
              cursorColor: kPrimaryColor,
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  Icons.search,
                  color: kPrimaryColor,
                ),
                hintText: 'Find you want',
                hintStyle: TextStyle(
                  color: kLightColor.withOpacity(0.4),
                  fontSize: kSize,
                ),
              ),
            ),
          ),
          StickyLabel(text: 'Popular Keyword'),
          Container(
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              top: kLessPadding,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List<Widget>.generate(
                  _chipsCategory.length,
                  (int index) {
                    return Chips(label: _chipsCategory[index]);
                  },
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              top: kLess,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List<Widget>.generate(
                  _chipsMobile.length,
                  (int index) {
                    return Chips(label: _chipsMobile[index]);
                  },
                ),
              ),
            ),
          ),
          StickyLabel(text: 'Favorite'),
          RecommendView(
            direction: Axis.horizontal,
            heights: 210.0,
            widths: MediaQuery.of(context).size.width,
            color: kWhiteColor,
            top: kLess,
            bottom: kLess,
            left: kDefaultPadding,
            right: kDefaultPadding,
            column: 1,
            items: 12,
            ratio: 1.4,
            child: RecommendItems(
              heights: 130.0,
              top: kRadius,
              bottom: kRadius,
              left: kRadius,
              right: kLessPadding,
              radius: kLessPadding,
              image: bgProfile,
              title: 'Shoes',
            ),
          ),
        ],
      ),
    );
  }
}
