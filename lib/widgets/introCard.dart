import 'package:flutter/material.dart';

class IntroCard extends StatelessWidget {
  
  final String text;
  IntroCard(this.text);
  
  bool mobileSize;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    if (screenSize.width <= 1010) mobileSize = true;
    if (screenSize.width >= 1010) mobileSize = false;
    return Card(
      
      elevation: 3,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50), bottomLeft: Radius.circular(50))),
      child: Container(
        padding: EdgeInsets.all(30),
        width: mobileSize ? screenSize.width * 0.8 : screenSize.width * 0.5,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, color: Colors.black87),
        ),
      ),
    );
  }
}
