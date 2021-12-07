import 'package:flutter/material.dart';
import 'package:futurejob_bwa/card_posted.dart';
import 'package:futurejob_bwa/theme.dart';

class SecondHomePage extends StatelessWidget {
  // const SecondHomePage({ Key? key }) : super(key: key);
  final jobtitle;
  final imageUrl;

  SecondHomePage({this.imageUrl, this.jobtitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 270,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imageUrl),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 180, left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        jobtitle,
                        style: titleSemiBold.copyWith(color: whiteColor),
                      ),
                      Text(
                        '12,309 available',
                        style: titleRegular.copyWith(color: whiteColor),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Big Companies',
                    style: titleRegular,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  PostedCard(
                    title: 'Front-End Developer',
                    subtitle: 'Google',
                    imageUrl: 'assets/google-icon.png',
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  PostedCard(
                    title: 'Front-End Developer',
                    subtitle: 'Google',
                    imageUrl: 'assets/google-icon.png',
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  PostedCard(
                    title: 'Front-End Developer',
                    subtitle: 'Google',
                    imageUrl: 'assets/google-icon.png',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'New Startup',
                    style: titleRegular,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  PostedCard(
                    title: 'Front-End Developer',
                    subtitle: 'Google',
                    imageUrl: 'assets/google-icon.png',
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  PostedCard(
                    title: 'Front-End Developer',
                    subtitle: 'Google',
                    imageUrl: 'assets/google-icon.png',
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  PostedCard(
                    title: 'Front-End Developer',
                    subtitle: 'Google',
                    imageUrl: 'assets/google-icon.png',
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  PostedCard(
                    title: 'Front-End Developer',
                    subtitle: 'Google',
                    imageUrl: 'assets/google-icon.png',
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
