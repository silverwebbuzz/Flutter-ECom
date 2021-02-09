import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/intro/intro.dart';

void main() {
  //StatusBar Overlay
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  // Portrait Mode Only
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          accentColor: kAccentColor,
          fontFamily: 'Jaapokki',
          ),
      home: Intro(),
    );
  }
}