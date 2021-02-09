import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/home/components/saleBanner.dart';

class SaleView extends StatelessWidget {
  final int column, items;
  final double ratio;
  final Widget child;
  const SaleView({
    Key key,
    this.column,
    this.ratio,
    this.items,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 400.0,
        width: 1750.0,
        color: kPrimaryColor,
        child: Row(
          children: [
            SaleBanner(
              image: sale,
              sale: 'Flash Sale',
              endDateLabel: 'End sale in :',
              endDate: '23 : 59 : 43',
            ),
            Flexible(
              child: GridView.builder(
                padding: EdgeInsets.all(kLess),
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
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
            ),
          ],
        ),
      ),
    );
  }
}
