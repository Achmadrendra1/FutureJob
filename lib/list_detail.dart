import 'package:flutter/material.dart';
import 'package:futurejob_bwa/theme.dart';

class DetailList extends StatelessWidget {
  // const DetailList({ Key? key }) : super(key: key);
  final String text;

  DetailList({this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/dot.png',
          width: 12,
          height: 12,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          text,
          style: textButtonLight,
        )
      ],
    );
  }
}
