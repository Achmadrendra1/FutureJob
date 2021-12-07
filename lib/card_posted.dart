import 'package:flutter/material.dart';
import 'package:futurejob_bwa/detail_page.dart';
import 'package:futurejob_bwa/theme.dart';

class PostedCard extends StatelessWidget {
  // const PostedCard({ Key? key }) : super(key: key);
  final String imageUrl;
  final String title;
  final String subtitle;

  PostedCard({this.imageUrl, this.subtitle, this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            width: 45,
            height: 45,
          ),
          SizedBox(
            width: 26,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: posted,
              ),
              Text(
                subtitle,
                style: subposted,
              )
            ],
          )
        ],
      ),
    );
  }
}
