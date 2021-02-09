import 'package:flutter/material.dart';

class HomeMenuGridView extends StatelessWidget {
  final double heights;
  final int column, items;
  final Widget child;
  final builder;
  const HomeMenuGridView({
    Key key, this.heights, this.column, this.items, this.child, this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heights,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: column,
          childAspectRatio: 1.5,
          mainAxisSpacing: 0.0,
          crossAxisSpacing: 0.0,
        ),
        itemCount: items,
        itemBuilder: builder,
      ),
    );
  }
}