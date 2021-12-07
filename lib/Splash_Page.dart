import 'dart:async';

import 'package:flutter/material.dart';
import 'package:futurejob_bwa/OnBoarding_Page.dart';
import 'package:futurejob_bwa/theme.dart';

class SplashPage extends StatefulWidget {
  // const SplashPage({ Key? key }) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnBoardingPage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/logo.png'),
              width: 59,
              height: 76,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'FUTUREJOB',
              style: titleSplash,
            )
          ],
        ),
      ),
    );
  }
}
