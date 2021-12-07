import 'package:flutter/material.dart';
import 'package:futurejob_bwa/second_homepage.dart';
import 'package:futurejob_bwa/theme.dart';

class CardCategory extends StatelessWidget {
  // const CardCategory({ Key? key }) : super(key: key);
  final String title;
  final String imageUrl;

  CardCategory({this.imageUrl, this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SecondHomePage(
                      jobtitle: title,
                      imageUrl: imageUrl,
                    )));
      },
      child: Container(
        width: 150,
        height: 200,
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16, right: 41),
            child: Text(
              title,
              style: category,
            ),
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              imageUrl,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
