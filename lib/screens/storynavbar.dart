import 'package:flutter/material.dart';
import 'package:webbasics/widgets/hireme.dart';

class StoryNavBar extends StatelessWidget {
  bool mobileSize;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    if (screenSize.width <= 1010) mobileSize = true;
    if (screenSize.width >= 1010) mobileSize = false;
    print(screenSize.width);
    return Container(
      child: mobileSize
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Akshay Bengani',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    NavBarItem('Home'),
                    NavBarItem('Skills'),
                    NavBarItem('Projects'),
                    NavBarItem('Reviews'),
                    NavBarItem('Contact'),
                  ],
                ),
                HireMe(),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Akshay Bengani',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: <Widget>[
                    NavBarItem('Home'),
                    NavBarItem('Skills'),
                    NavBarItem('Projects'),
                    NavBarItem('Reviews'),
                    NavBarItem('Contact'),
                    HireMe(),
                  ],
                ),
              ],
            ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String text;
  NavBarItem(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
