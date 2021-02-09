import 'package:flutter/material.dart';
import 'package:pages/constant.dart';
import 'package:pages/pages/intro/components/intodata.dart';
import 'package:pages/pages/intro/components/introBottom.dart';

class Intro extends StatefulWidget {
  Intro({Key key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  List<Map<String, String>> introData = [
    {
      'image': pieChart,
      'head': 'Track your routine',
      'desc':
          "Whether it's sets, reps, weight used, you can track it all with our intuitive interface.",
    },
    {
      'image': trophy,
      'head': 'Set personal goals',
      'desc':
          "We're all in the gym for a reason: goals. set goals for diet and fitness.",
    },
    {
      'image': chat,
      'head': 'Chat with others',
      'desc': "Inspire and help each other reach fitness and diet goals.",
    },
  ];

  var _controller = PageController();
  var _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page.round();
      });
    });
    return Scaffold(
      backgroundColor: kAccentColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        elevation: 0.0,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              physics: ClampingScrollPhysics(),
              controller: _controller,
              itemCount: introData.length,
              itemBuilder: (context, index) => IntroData(
                image: introData[index]['image'],
                head: introData[index]['head'],
                desc: introData[index]['desc'],
              ),
              onPageChanged: (page) {
                setState(() {
                  _currentPage = page;
                });
              },
            ),
          ),
          IntroBottom(currentPage: _currentPage, introData: introData),
        ],
      ),
    );
  }
}