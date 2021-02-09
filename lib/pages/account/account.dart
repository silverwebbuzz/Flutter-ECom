import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/about/about.dart';
import 'package:pages/pages/callCenter/callCenter.dart';
import 'package:pages/pages/message/message.dart';
import 'package:pages/pages/notification/notification.dart';
import 'package:pages/pages/orders/orders.dart';
import 'package:pages/pages/payments/payments.dart';
import 'package:pages/pages/setting/setting.dart';

class Account extends StatefulWidget {
  Account({Key key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final _labels = [
    'Notification',
    'Payments',
    'Message',
    'My Orders',
    'Setting Account',
    'Call Center',
    'About Application',
  ];

  final _icons = [
    Icons.notifications,
    Icons.payments,
    Icons.message,
    Icons.delivery_dining,
    Icons.settings,
    Icons.person,
    Icons.info,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        children: [
          Stack(
            overflow: Overflow.visible,
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                color: Colors.black12,
                height: 250.0,
                width: MediaQuery.of(context).size.width,
                child: Image(
                  image: AssetImage("assets/images/cover1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: -64.0,
                child: Container(
                  height: 125.0,
                  width: 125.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: kLess,
                      color: kWhiteColor,
                    ),
                    borderRadius: BorderRadius.circular(100.0),
                    image: DecorationImage(
                      image: AssetImage("assets/images/dp.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              top: kBottoNavBarHeight,
            ),
            child: Text(
              'Maria Jose',
              style: kDarkTextStyle,
            ),
          ),
          Expanded(
            child: ListView.builder(
              // physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: _labels.length,
              itemBuilder: (context, index) {
                return ListTile(
                  // dense: true,
                  leading: Icon(
                    _icons[index],
                    color: kPrimaryColor,
                  ),
                  title: Text(
                    _labels[index],
                    // style: TextStyle(fontSize: kFixPadding,),
                  ),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          switch (_labels[index]) {
                            case 'Notification':
                              return Notifications();
                              break;
                            case 'Payments':
                              return Payments();
                              break;
                            case 'Message':
                              return Messages();
                              break;
                            case 'My Orders':
                              return Orders();
                              break;
                            case 'Setting Account':
                              return Settings();
                              break;
                            case 'Call Center':
                              return CallCenter();
                              break;
                            case 'About Application':
                              return About();
                              break;
                            default:
                              return Notifications();
                          }
                        },
                      ),
                    ),
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
