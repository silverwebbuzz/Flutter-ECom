import 'package:flutter/material.dart';
import 'package:pages/constant.dart';

class RecommendView extends StatelessWidget {
  final int column, items;
  final Widget child;
  final Color color;
  final double ratio, top, bottom, left, right;
  final direction, heights, widths, physics;
  const RecommendView({
    Key key, this.child, this.column, this.items, this.color, this.ratio, this.direction, this.heights, this.widths, this.top, this.bottom, this.left, this.right, this.physics,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heights,
      width: widths,
      color: color,
          margin: EdgeInsets.only(
          top: top,
          bottom: bottom,
          left: left,
          right: right,
        ),
      child: GridView.builder(
        padding: EdgeInsets.all(kLess),
        scrollDirection: direction,
        physics: physics,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: column,
          childAspectRatio: ratio,
          mainAxisSpacing: 0.0,
          crossAxisSpacing: 0.0,
        ),
        itemCount: items,
        itemBuilder: (context, index) {
          return child;
        },
      ),
    );
  }
}