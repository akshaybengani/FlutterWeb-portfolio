import 'package:flutter/material.dart';
import 'package:webbasics/models/mobileproject.dart';

class ProjectItemLayout extends StatelessWidget {
  final MobileProject mobileProject;
  Size screenSize;
  ProjectItemLayout(this.mobileProject, this.screenSize);
  bool mobileSize;

  @override
  Widget build(BuildContext context) {
    if (screenSize.width <= 1010) mobileSize = true;
    if (screenSize.width >= 1010) mobileSize = false;
    return Container(
    
      //height: 300,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: screenSize.width * 0.9,
              height: mobileSize ? screenSize.width * 0.4 : screenSize.width * 0.17,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                image: DecorationImage(
                  image: AssetImage(mobileProject.pImgUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Text(
                mobileProject.pName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
