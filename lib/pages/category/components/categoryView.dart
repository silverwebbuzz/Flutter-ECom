import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class CategoryView extends StatelessWidget {
  final int column, items;
  final Widget child;
  final Color color;
  final double ratio;
  final direction, builder;
  final heights, widths;
  const CategoryView({
    Key key, this.column, this.items, this.child, this.direction, this.heights, this.widths, this.color, this.ratio, this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heights,
      width: widths,
      color: color,
      child: GridView.builder(
        padding: EdgeInsets.all(kLess),
        scrollDirection: direction,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: column,
          childAspectRatio: ratio,
          mainAxisSpacing: 0.0,
          crossAxisSpacing: 0.0,
        ),
        itemCount: items,
        itemBuilder: builder,
      ),
    );
  }
}