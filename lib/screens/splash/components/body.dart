import 'package:e_commerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _currentPage = 0;

  final List<Map<String, String>> _splashData = <Map<String, String>>[
    <String, String>{
      'text': "Welcome to Tokoto, Let's shop!",
      'image': 'assets/images/splash_1.png'
    },
    <String, String>{
      'text':
          'We help people conect with store \naround United State of America',
      'image': 'assets/images/splash_2.png'
    },
    <String, String>{
      'text': 'We show the easy way to shop. \nJust stay at home with us',
      'image': 'assets/images/splash_3.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (int value) {
                  setState(() {
                    _currentPage = value;
                  });
                },
                itemCount: _splashData.length,
                itemBuilder: (BuildContext context, int index) => SplashContent(
                  text: _splashData[index]['text'],
                  image: _splashData[index]['image'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: <Widget>[
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List<Widget>.generate(
                        _splashData.length,
                        (int index) => buildDot(index: index),
                      ),
                    ),
                    const Spacer(flex: 3),
                    DefaultButton(
                      text: 'Continue',
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDot({@required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: _currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: _currentPage == index ? kPrimaryColor : kInactiveColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
