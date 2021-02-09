import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/cart/components/cartBottomBar.dart';

class ShoppingCart extends StatefulWidget {
  ShoppingCart({Key key}) : super(key: key);

  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        elevation: 0.0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Cart',
          style: TextStyle(color: kPrimaryColor),
        ),
      ),
      body: Container(
        color: kAccentColor,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(
                  bottom: kLessPadding,
                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                      top: kLessPadding,
                      left: kLessPadding,
                      right: kLessPadding,
                    ),
                    padding: EdgeInsets.all(kLessPadding),
                    color: kWhiteColor,
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage(bgProfile),
                          height: 110.0,
                          width: 110.0,
                          fit: BoxFit.cover,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: kLessPadding,
                              right: kLess,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Samsung Galaxy Note 9 8 GB color MirrorBlack',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: kFixPadding,
                                  ),
                                ),
                                Text(
                                  '4GB 64GB',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: kLightColor,
                                  ),
                                ),
                                Text('\$950'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      padding: EdgeInsets.all(kRadius),
                                      onPressed: () => setState(() {
                                        if (_itemCount > 0) {
                                          _itemCount--;
                                        }
                                      }),
                                      icon: Icon(
                                        Icons.remove_circle_outline,
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                    Container(
                                      width: kHeight,
                                      height: kShape,
                                      color: kAccentColor,
                                      padding: EdgeInsets.only(top: 13.0),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        enabled: false,
                                        cursorColor: kPrimaryColor,
                                        textInputAction: TextInputAction.next,
                                        keyboardType: TextInputType.name,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: _itemCount.toString(),
                                          hintStyle: TextStyle(
                                            color: kDarkColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      padding: EdgeInsets.all(kRadius),
                                      onPressed: () =>
                                          setState(() => _itemCount++),
                                      icon: Icon(
                                        Icons.add_circle_outline,
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CartBottomBar(),
    );
  }
}
