import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/account/components/backButton.dart';
import 'package:pages/pages/search/components/headerLabel.dart';
import 'package:pages/pages/signup/components/defaultButton.dart';
import 'package:pages/pages/success/success.dart';

class Payments extends StatefulWidget {
  Payments({Key key}) : super(key: key);

  @override
  _PaymentsState createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  int value = 0;

  final _labels = [
    'Credit card / Debit card',
    'Cash on delivery',
    'Paypal',
    'Google wallet',
  ];

  final _icons = [
    Icons.credit_card,
    Icons.money,
    Icons.payments,
    Icons.account_balance_wallet,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: kWhiteColor,
        iconTheme: IconThemeData(
          color: kPrimaryColor,
        ),
        title: Text(
          'Payments',
          style: TextStyle(color: kPrimaryColor),
        ),
        leading: CustomBackButton(),
      ),
      body: Column(
        children: [
          HeaderLabel(
            text: 'Choose your payment method',
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemCount: _labels.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Radio(
                    activeColor: kPrimaryColor,
                    value: index,
                    groupValue: value,
                    onChanged: (i) => setState(() => value = i),
                  ),
                  title: Text(
                    _labels[index],
                    style: TextStyle(color: kDarkColor),
                  ),
                  trailing: Icon(
                    _icons[index],
                    color: kPrimaryColor,
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
            ),
          ),
          DefaultButton(
            name: 'Pay',
            press: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => Success())),
          )
        ],
      ),
    );
  }
}
