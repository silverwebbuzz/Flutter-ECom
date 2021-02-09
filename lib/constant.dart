import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF8084);
const kAccentColor = Color(0xFFF1F1F1);
const kWhiteColor = Color(0xFFFFFFFF);
const kLightColor = Color(0xFF808080);
const kDarkColor = Color(0xFF303030);
const kOrangeColor = Colors.orange;
const kTransparent = Colors.transparent;

const kDefaultPadding = 24.0;
const kLessPadding = 10.0;
const kFixPadding = 16.0;
const kLess = 4.0;

const kSize = 18.0;

const kHeight = 44.0;
const kBottoNavBarHeight = 64.0;

const kShape = 30.0;

const kRadius = 0.0;

const kHeadingTextStyle = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
);

const kSubTextStyle = TextStyle(
  fontSize: 18.0,
  color: kLightColor,
);

const kTitleTextStyle = TextStyle(
  fontSize: 20.0,
  color: kPrimaryColor,
);

const kDarkTextStyle = TextStyle(
  fontSize: 20.0,
  color: kDarkColor,
);

const kCatTextStyle = TextStyle(
  fontSize: 22.0,
  color: kWhiteColor,
);

const kDivider = Divider(
  color: kAccentColor,
  thickness: 10.0,
);

const kSmallDivider = Divider(
  color: kAccentColor,
  thickness: 5.0,
);

final String whiteBG = 'assets/images/whitebg.svg';
final String bgProfile = 'assets/images/home.jpg';
final String table = 'assets/images/table.jpg';
final String sea = 'assets/images/sea.jpg';
final String shopping1 = 'assets/images/shopping4.jpg';
final String shopping2 = 'assets/images/shopping6.jpg';
final String shopping3 = 'assets/images/shopping8.jpg';
final String pieChart = 'assets/images/pieChart.png';
final String trophy = 'assets/images/trophy.png';
final String chat = 'assets/images/chat.png';
final String callCenter = 'assets/images/center.png';
final String conversation = 'assets/images/conversation.png';
final String chatBubble = 'assets/images/emptyChat.png';
final String emptyOrders = 'assets/images/orders.png';
final String success = 'assets/images/success.gif';
final String sale = 'assets/images/sale.png';

final String book = 'assets/images/book.jpg';
final String camera = 'assets/images/camera.jpg';
final String menFashion = 'assets/images/mensFashion.jpg';
final String desktop = 'assets/images/desktop.jpg';
final String gymEquipment = 'assets/images/gymEquipment.jpg';
final String girlFashion = 'assets/images/girlFashion.jpg';
final String food = 'assets/images/food.jpg';
final String girlFootwear = 'assets/images/girlFootwear.jpg';
final String furniture = 'assets/images/furniture.jpg';
final String joyStick = 'assets/images/joyStick.jpg';
final String headPhone = 'assets/images/headPhone.jpg';
final String shoes = 'assets/images/shoes.jpg';
final String tableTennis = 'assets/images/tableTennis.jpg';
final String watch = 'assets/images/watch.jpg';

class CategoryList {
  final String catName;
  final String catImage;

  CategoryList({this.catName, this.catImage,});
}

List<CategoryList> categoryList = [
    CategoryList(catName: "Books", catImage: book),
    CategoryList(catName: "Camera", catImage: camera),
    CategoryList(catName: "Mens Fashion", catImage: menFashion),
    CategoryList(catName: "Mens Shoes", catImage: shoes),
    CategoryList(catName: "Watch", catImage: watch),
    CategoryList(catName: "Girls Fashion", catImage: girlFashion),
    CategoryList(catName: "Girls Footwear", catImage: girlFootwear),
    CategoryList(catName: "Headphones", catImage: headPhone),
    CategoryList(catName: "Joysticks", catImage: joyStick),
    CategoryList(catName: "Desktop", catImage: desktop),
    CategoryList(catName: "Gym Equipments", catImage: gymEquipment),
    CategoryList(catName: "Food", catImage: food),
    CategoryList(catName: "Furniture", catImage: furniture),
    CategoryList(catName: "Sports Equipments", catImage: tableTennis),
  ];

class MenuCategoryList {
  final String menuCatName;
  final IconData menuCatIcon;
  // final Color color;

  MenuCategoryList({this.menuCatName, this.menuCatIcon});
}

List<MenuCategoryList> menuCategoryList = [
  MenuCategoryList(menuCatName: "Camera", menuCatIcon: Icons.camera),
  MenuCategoryList(menuCatName: "Food", menuCatIcon: Icons.food_bank),
  MenuCategoryList(menuCatName: "Headphone", menuCatIcon: Icons.headset),
  MenuCategoryList(menuCatName: "Gaming", menuCatIcon: Icons.games),
  MenuCategoryList(menuCatName: "Fashion", menuCatIcon: Icons.format_shapes_outlined),
  MenuCategoryList(menuCatName: "Health Care", menuCatIcon: Icons.healing_outlined),
  MenuCategoryList(menuCatName: "Computer", menuCatIcon: Icons.computer),
  MenuCategoryList(menuCatName: "Equipment", menuCatIcon: Icons.graphic_eq_outlined),
  MenuCategoryList(menuCatName: "Sport", menuCatIcon: Icons.sports),
  MenuCategoryList(menuCatName: "Ticket", menuCatIcon: Icons.turned_in),
  MenuCategoryList(menuCatName: "Books", menuCatIcon: Icons.book),
  MenuCategoryList(menuCatName: "Cloths", menuCatIcon: Icons.image),
];

final List<String> sliderImages = [
    'assets/images/slide1.jpg',
    'assets/images/slide2.jpg',
    'assets/images/slide3.jpg',
    'assets/images/slide4.jpg',
    'assets/images/slide5.jpg',
    'assets/images/slide6.jpg',
    'assets/images/slide7.jpg',
    'assets/images/slide8.jpg',
    'assets/images/slide9.jpg',
  ];

// class SizeConfig {
//   static MediaQueryData _mediaQueryData;
//   static double screenWidth;
//   static double screenHeight;
//   static double defaultSize;
//   static Orientation orientation;

//   void init(BuildContext context) {
//     _mediaQueryData = MediaQuery.of(context);
//     screenWidth = _mediaQueryData.size.width;
//     screenHeight = _mediaQueryData.size.height;
//     orientation = _mediaQueryData.orientation;
//   }
// }
