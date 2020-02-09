import 'package:flutter/material.dart';
import 'package:webbasics/models/mobileproject.dart';

class MobileDetailsAlertBox {
  bool mobileSize;
  void showDetailsDialog({
    MobileProject mobpro,
    BuildContext context,
    Size screenSize,
  }) {
    if (screenSize.width <= 640) mobileSize = true;
    if (screenSize.width >= 640) mobileSize = false;
    showGeneralDialog(
      context: context,
      barrierColor: mobpro.pColor.withOpacity(0.3),
      barrierDismissible: true,
      barrierLabel: "Dialog",
      transitionDuration: Duration(milliseconds: 400),
      pageBuilder: (_, __, ___) {
        return SizedBox.fromSize(
          size: Size(screenSize.width * 0.8, screenSize.height * 0.8),
          child: Container(
            margin: EdgeInsets.all(
                ((screenSize.width + screenSize.height) / 2) * 0.1),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 10, color: mobpro.pColor),
            ),
            child: Column(
              children: <Widget>[
                mobileSize
                    ? Container(
                        width: screenSize.width * 0.8 + 30,
                        height: screenSize.height * 0.8 + 30,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                          Text('Hello'),
                          Text('Hello'),
                          Text('Hello'),
                          Text('Hello'),
                          Text('Hello'),
                        ],)
                      )
                    : Container(
                        width: screenSize.width * 0.8 + 30,
                        height: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                width: (screenSize.width * 0.75) * 0.2,
                                color: Colors.red),
                            Container(
                                width: (screenSize.width * 0.75) * 0.8,
                                color: Colors.blue),
                          ],
                        ),
                      )
              ],
            ),
          ),
        );
      },
    );
  }
}
