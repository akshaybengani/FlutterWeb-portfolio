import 'package:flutter/material.dart';
import 'package:webbasics/models/mobileproject.dart';
import 'package:webbasics/screens/storynavbar.dart';

class ShowMobileProjectDetails extends StatelessWidget {
  static const routename = "/project-details";
  bool mobileSize;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    if (screenSize.width <= 1010) mobileSize = true;
    if (screenSize.width >= 1010) mobileSize = false;
    final mobileAppData =
        ModalRoute.of(context).settings.arguments as MobileProject;
    print(mobileAppData.pName);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
          constraints: BoxConstraints(maxWidth: 1200, minWidth: 480),
          child: Column(
            children: <Widget>[
              StoryNavBar(),
              SizedBox(height: 10),
              Divider(thickness: 5, color: mobileAppData.pColor),
              SizedBox(height: 20),
              // ? Actual Layout Designing stared from here
              Row(
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 200,
                    child:
                        Image.asset(mobileAppData.pImgUrl, fit: BoxFit.cover),
                  ),
                  Column(
                    children: <Widget>[
                      Text(mobileAppData.pName),
                      Container(width: screenSize.width *0.5, child: Text(mobileAppData.pDesc)),
                    ],
                  ),
                ],
              ),
              Divider(thickness: 5, color: mobileAppData.pColor),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text("Project was completed on: "),
                      Text(mobileAppData.pDate),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      mobileAppData.pPubUrl.isEmpty
                          ? Container()
                          : Container(
                              width: 100,
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/playstore.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                      mobileAppData.pGitUrl.isEmpty
                          ? Container()
                          : Container(
                              width: 100,
                              height: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/github.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                    ],
                  ),
                ],
              ),
              Container(
                width: screenSize.width * 0.6,
                height: 400,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      childAspectRatio: 16 / 9,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 30,
                    ),
                    itemCount: mobileAppData.pAllImgUrl.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network(mobileAppData.pAllImgUrl[index]);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
