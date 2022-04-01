import 'dart:async';

import 'package:ecommerce/dashboardscreen/dashboardscreen.dart';
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), openLogin);
  }
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: DelayedDisplay(
              delay: Duration(milliseconds: 100),
              fadingDuration: Duration(milliseconds: 600),
              slidingBeginOffset: const Offset(0.0, 1.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/logo.png'))),
              ),
            ),
          ),
        ),
      ),
    );
  }
  void openLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DashboardScreen()),
    );
  }
}
