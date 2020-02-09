import 'package:flutter/material.dart';
import 'package:webbasics/data/projectdata.dart';
import 'package:webbasics/widgets/introCard.dart';
import 'package:webbasics/widgets/mobileprojectgrid.dart';
import 'package:webbasics/widgets/projectHeadingWidget.dart';
import 'package:webbasics/widgets/sectionHeadingWidget.dart';

class StoryTwist extends StatelessWidget {
  bool mobileSize;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    if (screenSize.width <= 1010) mobileSize = true;
    if (screenSize.width >= 1010) mobileSize = false;
    return Container(
      child: Column(
        children: <Widget>[
          //ProjectHead("PROJECTS & MY WORK", Colors.deepOrange[900]),
          SectionHeadingWidget(
            title: "PROJECTS & MY WORK",
            myCusColor: Colors.deepOrange[900],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: mobileSize
                    ? screenSize.width * 0.6
                    : screenSize.width * 0.3,
                height: mobileSize
                    ? screenSize.width * 0.5
                    : screenSize.width * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  //shape: BoxShape.circle,
                  border: Border.all(color: Colors.orange, width: 3),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/projects.png"),
                  ),
                ),
              ),
              mobileSize
                  ? Container()
                  : IntroCard(
                      "Building Projects and publishing them is the best part of any developer's life, I believe building a small project from whatever you learn helps a lot for remembering things,\n That's why I believe in building then just learning."),
            ],
          ),
          SizedBox(height: 20),
          !mobileSize
              ? Container()
              : IntroCard(
                  "Building Projects and publishing them is the best part of any developer's life, I believe building a small project from whatever you learn helps a lot for remembering things,\n That's why I believe in building then just learning."),
          !mobileSize ? Container() : SizedBox(height: 20),
          //IntroCard("Building Projects and publishing them is the best part of any developer's life, I believe building a small project from whatever you learn helps a lot for remembering things,\n That's why I believe in building then just learning."),
          // ? MobileFlutterProjects
          Divider(thickness: 5, color: Colors.orange[200]),
          SizedBox(height: 20),
          ProjectHeadingWidget(
            headTitle: "Flutter",
            headImage: "assets/images/flutterhead.jpg",
            headingColor: Colors.cyan,
          ),
          MobileProjectGrid(MOBILE_FLUTTER_PROJECTS),
          // ? Mobile Native Projects
          Divider(thickness: 5, color: Colors.orange[200]),
          SizedBox(height: 20),
          ProjectHeadingWidget(
            headTitle: "Android Native",
            headImage: "assets/images/androidhead.jpg",
            headingColor: Colors.green,
          ),
          MobileProjectGrid(MOBILE_NATIVE_PROJECTS),
        ],
      ),
    );
  }
}
