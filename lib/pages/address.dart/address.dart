import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/account/components/backButton.dart';
import 'package:pages/pages/payments/payments.dart';
import 'package:pages/pages/search/components/headerLabel.dart';
import 'package:pages/pages/signup/components/defaultButton.dart';
import 'package:pages/pages/signup/components/textFieldNumber.dart';
import 'package:pages/pages/signup/components/textFieldRounded.dart';

class DeliveryAddress extends StatefulWidget {
  DeliveryAddress({Key key}) : super(key: key);

  @override
  _DeliveryAddressState createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
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
          'Delivery Address',
          style: TextStyle(color: kPrimaryColor),
        ),
        leading: CustomBackButton(),
      ),
      body: Column(
        children: [
          HeaderLabel(
            text: 'Where are your ordered items shipped?',
          ),
          TextFieldNumber(
            hintText: 'PinCode',
            icon: Icons.keyboard,
          ),
          SizedBox(
            height: kFixPadding,
          ),
          TextFieldRounded(
            hintText: 'Loacality',
            icon: Icons.landscape,
          ),
          SizedBox(
            height: kFixPadding,
          ),
          TextFieldRounded(
            hintText: 'City',
            icon: Icons.location_city,
          ),
          SizedBox(
            height: kFixPadding,
          ),
          TextFieldRounded(
            hintText: 'State',
            icon: Icons.map,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          DefaultButton(
            name: 'Go to payment',
            press: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Payments())),
          ),
        ],
      ),
    );
  }
}
