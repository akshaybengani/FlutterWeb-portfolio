import 'package:flutter/material.dart';

class ProjectHeadingWidget extends StatelessWidget {
  final String headTitle, headImage;
  final Color headingColor;
  ProjectHeadingWidget({
    @required this.headTitle,
    @required this.headImage,
    @required this.headingColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: headingColor, width: 3),
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage(headImage),
            radius: 30,
          ),
        ),
        SizedBox(width: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(headTitle,
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: headingColor)),
          ],
        )
      ],
    );
  }
}
