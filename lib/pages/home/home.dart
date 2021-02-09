import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/category/components/categoryItems.dart';
import 'package:pages/pages/category/components/categoryView.dart';
import 'package:pages/pages/home/components/defaultIconButton.dart';
import 'package:pages/pages/home/components/headerText.dart';
import 'package:pages/pages/home/components/headerTextContainer.dart';
import 'package:pages/pages/home/components/homeMenuGridView.dart';
import 'package:pages/pages/home/components/menuCategoryItem.dart';
import 'package:pages/pages/home/components/saleBox.dart';
import 'package:pages/pages/home/components/saleProducts.dart';
import 'package:pages/pages/home/components/saleView.dart';
import 'package:pages/pages/home/components/searchBarContainer.dart';
import 'package:pages/pages/message/message.dart';
import 'package:pages/pages/notification/notification.dart';
import 'package:pages/pages/search/components/recommendItems.dart';
import 'package:pages/pages/search/components/recommendView.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  // final List<String> sliderImages = [
  //   bgProfile,
  //   shopping1,
  //   table,
  //   shopping2,
  //   sea,
  //   shopping3,
  // ];

  // final List category = [
  //   {'name': 'to'},
  //   {'name': 'you'}
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: SearchBarContainer(),
        actions: [
          DefaultIconButton(
            icon: Icons.message,
            press: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Messages())),
          ),
          DefaultIconButton(
            icon: Icons.notifications,
            press: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => Notifications())),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  height: 250.0,
                  child: PageView.builder(
                    physics: ClampingScrollPhysics(),
                    onPageChanged: (value) {
                      setState(() {
                        currentIndex = value;
                      });
                    },
                    itemCount: sliderImages.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                        child: Image.asset(
                          sliderImages[index],
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
                Positioned(
                  bottom: 16.0,
                  left: 0.0,
                  right: 0.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      sliderImages.length,
                      (index) => buildDots(index),
                    ),
                  ),
                ),
              ],
            ),
            HeaderTextContainer(
              child: HeaderText(text: 'Menu'),
            ),
            HomeMenuGridView(
              heights: 180.0,
              column: 4,
              items: menuCategoryList.length,
              builder: (context, index) {
              return MenuCategoryItem(
                icon: menuCategoryList[index].menuCatIcon,
                heights: 32.0,
                name: menuCategoryList[index].menuCatName,
              );}
            ),
            kDivider,
            HeaderTextContainer(
              child: HeaderText(text: 'Week Promotion'),
            ),
            CategoryView(
                direction: Axis.horizontal,
                heights: 200.0,
                widths: MediaQuery.of(context).size.width,
                color: kWhiteColor,
                column: 1,
                ratio: 1.5,
                items: categoryList.length,
                builder: (context, index) {
                  return CategoryItems(
                    heights: MediaQuery.of(context).size.height,
                    widths: 400.0,
                    radius: kRadius,
                    image: categoryList[index].catImage,
                    // title: 'Discount',
                    // titleSize: kFixPadding,
                    amount: '10%',
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 2.0,
                    ),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(14.0),
                      ),
                    ),
                    // amtSize: kDefaultPadding,
                    align: Alignment.topRight,
                  );
                }),
            SaleView(
              column: 1,
              ratio: 2.9,
              items: 12,
              child: SaleBox(
                saleProducts: SaleProducts(
                  image: bgProfile,
                  title: 'Apple Macbook Pro with Touch Bar',
                  oldPrice: '\$2000',
                  newPrice: '\$1300',
                  rating: '(56)',
                  location: 'Ahmedabad',
                  stock: '9 Available',
                ),
              ),
            ),
            HeaderTextContainer(
              child: HeaderText(text: 'Category'),
            ),
            CategoryView(
                direction: Axis.horizontal,
                heights: 300.0,
                widths: MediaQuery.of(context).size.width,
                color: kWhiteColor,
                column: 2,
                ratio: 1.0,
                items: categoryList.length,
                builder: (context, index) {
                  return CategoryItems(
                    padding: EdgeInsets.symmetric(horizontal: 2.0),
                    heights: MediaQuery.of(context).size.height,
                    widths: MediaQuery.of(context).size.width,
                    radius: kLess,
                    image: categoryList[index].catImage,
                    title: categoryList[index].catName,
                    color: kDarkColor,
                    titleSize: kDefaultPadding,
                    align: Alignment.center,
                  );
                }),
            kDivider,
            HeaderTextContainer(
              child: HeaderText(text: 'Recommended'),
            ),
            RecommendView(
              direction: Axis.horizontal,
              physics: AlwaysScrollableScrollPhysics(),
              heights: 315.0,
              widths: MediaQuery.of(context).size.width,
              top: kRadius,
              bottom: kRadius,
              left: kRadius,
              right: kRadius,
              color: kWhiteColor,
              column: 1,
              items: 8,
              ratio: 1.8,
              child: RecommendItems(
                heights: 228.0,
                top: kLess,
                bottom: kLess,
                left: kLess,
                right: kLess,
                radius: kLess,
                image: bgProfile,
                title: 'Shoes',
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDots(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      height: 8.0,
      width: currentIndex == index ? 24.0 : 8.0,
      margin: EdgeInsets.only(
        right: 4.0,
      ),
      decoration: BoxDecoration(
        color: currentIndex == index ? kPrimaryColor : kWhiteColor,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
