import 'package:flutter/material.dart';
import 'package:futurejob_bwa/Home_Page.dart';
import 'package:futurejob_bwa/OnBoarding_Page.dart';
import 'package:futurejob_bwa/Sign_In.dart';
import 'package:futurejob_bwa/Sign_Up.dart';
import 'package:futurejob_bwa/Splash_Page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnBoardingPage(),
        '/sign-in': (context) => SignIn(),
        '/sign-up': (context) => SignUp(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
