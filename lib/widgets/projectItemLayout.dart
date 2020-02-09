import 'package:flutter/material.dart';
import 'package:webbasics/models/mobileproject.dart';
import 'package:webbasics/widgets/mobileDetailsAlertBox.dart';
import 'package:webbasics/widgets/showMobileProjectDetails.dart';

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
      child: GestureDetector(
        onTap: () {
          //Navigator.of(context).pushNamed(ShowMobileProjectDetails.routename, arguments: mobileProject);
          MobileDetailsAlertBox().showDetailsDialog(context: context, mobpro: mobileProject, screenSize: screenSize);
        },
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: screenSize.width * 0.9,
                //height: mobileSize ? screenSize.width * 0.4 : screenSize.width * 0.17,
                height: 200,
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
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.symmetric(
                          vertical: BorderSide(
                              color: mobileProject.pColor, width: 5))),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
