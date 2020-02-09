import 'package:flutter/material.dart';
class SectionHeadingWidget extends StatelessWidget {

  final Color myCusColor;
  final String title;

  SectionHeadingWidget({this.myCusColor, this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(title,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: myCusColor)),
      ],
    );
  }
}


