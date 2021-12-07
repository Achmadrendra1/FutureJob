import 'package:flutter/material.dart';
import 'package:futurejob_bwa/card_category.dart';
import 'package:futurejob_bwa/card_posted.dart';
import 'package:futurejob_bwa/theme.dart';

class HomePage extends StatelessWidget {
  Widget header() {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 24, right: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy',
                    style: titleRegular.copyWith(
                      color: greyColor,
                    ),
                  ),
                  Text(
                    'Achmad Rendra',
                    style: titleSemiBold,
                  )
                ],
              ),
              Image.asset(
                'assets/user_pic.png',
                width: 58,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget body() {
    return Padding(
        padding: const EdgeInsets.only(top: 30, left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hot Categories',
              style: titleRegular,
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardCategory(
                    title: 'Website Developer',
                    imageUrl: 'assets/cat_1.png',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CardCategory(
                    title: 'Mobile Developer',
                    imageUrl: 'assets/cat_2.png',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CardCategory(
                    title: 'App Designer',
                    imageUrl: 'assets/cat_3.png',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CardCategory(
                    title: 'Content Writer',
                    imageUrl: 'assets/cat_4.png',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CardCategory(
                    title: 'Video Grapher',
                    imageUrl: 'assets/cat_5.png',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Just Posted',
              style: titleRegular,
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 300,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    PostedCard(
                      imageUrl: 'assets/google-icon.png',
                      title: 'Front-End Developer',
                      subtitle: 'Google',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PostedCard(
                      imageUrl: 'assets/facebook.png',
                      title: 'Data Scientist',
                      subtitle: 'Facebook',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PostedCard(
                      imageUrl: 'assets/instagram.png',
                      title: 'UI Designer',
                      subtitle: 'Instagram',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PostedCard(
                      imageUrl: 'assets/instagram.png',
                      title: 'UI Designer',
                      subtitle: 'Instagram',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PostedCard(
                      imageUrl: 'assets/instagram.png',
                      title: 'UI Designer',
                      subtitle: 'Instagram',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PostedCard(
                      imageUrl: 'assets/instagram.png',
                      title: 'UI Designer',
                      subtitle: 'Instagram',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PostedCard(
                      imageUrl: 'assets/instagram.png',
                      title: 'UI Designer',
                      subtitle: 'Instagram',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    PostedCard(
                      imageUrl: 'assets/instagram.png',
                      title: 'UI Designer',
                      subtitle: 'Instagram',
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 30),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          unselectedItemColor: greyColor,
          selectedItemColor: purpleColor,
          currentIndex: 0,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/icon1.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/icon2.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/icon3.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/icon4.png',
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [header(), body()],
        ),
      ),
    );
  }
}
