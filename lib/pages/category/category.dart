import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/category/components/categoryItems.dart';
import 'package:pages/pages/category/components/categoryView.dart';
import 'package:pages/pages/search/search.dart';
import 'package:shimmer/shimmer.dart';

class Category extends StatefulWidget {
  Category({Key key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    // int offset = 0;
    int time = 100;
    Timer timer = Timer(Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
      });
    });
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        elevation: 0.0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Category',
          style: TextStyle(color: kPrimaryColor),
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Search(),
              ),
            ),
            icon: Icon(
              Icons.search,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
      body: isLoading
          ? Shimmer.fromColors(
              highlightColor: kWhiteColor,
              baseColor: kLightColor,
              period: Duration(milliseconds: time),
              child: GridView.builder(
                padding: EdgeInsets.all(kLess),
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.3,
                  mainAxisSpacing: 0.0,
                  crossAxisSpacing: 0.0,
                ),
                itemCount: 14,
                itemBuilder: (context, index) {
                  return CategoryItems(
                    heights: MediaQuery.of(context).size.height,
                    widths: MediaQuery.of(context).size.width,
                    radius: kLessPadding,
                    image: categoryList[index].catImage,
                    // title: categoryList[index].catName,
                    // color: kAccentColor,
                    // titleSize: kDefaultPadding,
                    align: Alignment.center,
                  );
                },
              ),
            )
          : CategoryView(
              direction: Axis.vertical,
              heights: MediaQuery.of(context).size.height,
              widths: MediaQuery.of(context).size.width,
              color: kWhiteColor,
              column: 2,
              ratio: 1.3,
              items: categoryList.length,
              builder: (context, index) {
                return CategoryItems(
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                  heights: MediaQuery.of(context).size.height,
                  widths: MediaQuery.of(context).size.width,
                  radius: kLessPadding,
                  image: categoryList[index].catImage,
                  title: categoryList[index].catName,
                  color: kLightColor,
                  titleSize: kDefaultPadding,
                  align: Alignment.center,
                );
              },
            ),
    );
  }
}
