import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class MenuCategoryItem extends StatelessWidget {
  final String image, name;
  final IconData icon;
  final double heights;
  const MenuCategoryItem({
    Key key, this.image, this.heights, this.name, this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Image(
        //   image: AssetImage(image),
        //   height: heights,
        //   fit: BoxFit.cover,
        // ),
        Icon(icon, color: kPrimaryColor),
        Text(
          name,
          style: TextStyle(color: kLightColor),
        ),
      ],
    );
  }
}