import 'package:flutter/material.dart';
import 'package:futurejob_bwa/Sign_In.dart';
import 'package:futurejob_bwa/Sign_Up.dart';
import 'package:futurejob_bwa/theme.dart';

class OnBoardingPage extends StatelessWidget {
  // const OnBoardingPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img-bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 20, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Build Your Next\n'
                  'Future Career Like\n'
                  'a Master',
                  style: titleOnboarding,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '18,000 jobs available',
                  style: subtitle,
                )
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 500),
              child: Container(
                width: 200,
                height: 45,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: whiteColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(66))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text(
                    'Get Started',
                    style: textButton.copyWith(color: purpleColor),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 620),
              child: Container(
                width: 200,
                height: 45,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: whiteColor),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(66))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: Text(
                    'Sign In',
                    style: textButton.copyWith(color: whiteColor),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
