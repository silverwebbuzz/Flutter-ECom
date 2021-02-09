import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/account/components/backButton.dart';

class Settings extends StatefulWidget {
  Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _labels = [
    'Account',
    'Address',
    'Telephone',
    'Email',
    'Setting',
    'Order Notifications',
    'Discount Notifications',
    'Credit Card',
    'Logout',
  ];

  final _icons = [
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
    Icons.arrow_forward_ios_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: kWhiteColor,
        iconTheme: IconThemeData(
          color: kPrimaryColor,
        ),
        title: Text(
          'Setting Account',
          style: TextStyle(color: kPrimaryColor),
        ),
        leading: CustomBackButton(),
      ),
      body: ListView.separated(
        padding: EdgeInsets.zero,
        itemCount: _labels.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              _labels[index],
              style: TextStyle(
                color:
                    index % 4 == 0 ? kDarkColor : kDarkColor.withOpacity(0.8),
              ),
            ),
            trailing: Icon(
              // _labels[index] == 'Account' || _labels[index] == 'Setting' || _labels[index] == 'Logout' ?  null : _icons[index],
              index % 4 == 0 ? null : _icons[index],
              color: kPrimaryColor,
            ),
            enabled: _labels[index] == 'Account' || _labels[index] == 'Setting'
                ? false
                : true,
            onTap: () => this.setState(() {
              switch (_labels[index]) {
                case 'Address':
                  return snackBarMsg(context, 'Address');
                  break;
                case 'Telephone':
                  return snackBarMsg(context, 'Telephone');
                  break;
                case 'Email':
                  return snackBarMsg(context, 'Email');
                  break;
                case 'Order Notifications':
                  return snackBarMsg(context, 'Order Notifications');
                  break;
                case 'Discount Notifications':
                  return snackBarMsg(context, 'Discount Notifications');
                  break;
                case 'Credit Card':
                  return snackBarMsg(context, 'Credit Card');
                  break;
                case 'Logout':
                  return _signOutDrawer(context);
                  break;
                default:
                  return snackBarMsg(context, 'Address');
              }
            }),
          );
        },
        separatorBuilder: (context, index) {
          return _labels[index] == 'Email' || _labels[index] == 'Credit Card'
              ? kSmallDivider
              : Divider();
        },
      ),
    );
  }

  snackBarMsg(BuildContext context, String text) {
    var sb = SnackBar(
      elevation: 0.0,
      // behavior: SnackBarBehavior.fixed,
      content: Text(text),
      duration: new Duration(seconds: 3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
      ),
      //backgroundColor: Colors.redAccent,
      action: SnackBarAction(
        textColor: Color(0xFFFAF2FB),
        label: 'OK',
        onPressed: () {},
      ),
    );
    _scaffoldKey.currentState.showSnackBar(sb);
    // Scaffold.of(context).showSnackBar(sb);
  }

  void _signOutDrawer(BuildContext context) {
    showModalBottomSheet(
      isDismissible: false,
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(left: 32.0, right: 32.0),
          // padding: EdgeInsets.all(32.0),
          color: kPrimaryColor,
          height: 150.0,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                'Are you sure you want to Logout ?',
                style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      color: kWhiteColor,
                      child: Text(
                        'Logout',
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: OutlineButton(
                      highlightedBorderColor:
                          kWhiteColor,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      borderSide: BorderSide(
                          color: kWhiteColor),
                      color: kPrimaryColor,
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          color: kWhiteColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
