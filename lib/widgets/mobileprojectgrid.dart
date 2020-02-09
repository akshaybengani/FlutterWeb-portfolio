import 'package:flutter/material.dart';
import 'package:webbasics/models/mobileproject.dart';
import 'package:webbasics/widgets/projectItemLayout.dart';

class MobileProjectGrid extends StatelessWidget {
  List<MobileProject> data;
  MobileProjectGrid(this.data);
  bool mobileSize;
  
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    if (screenSize.width <= 1010) mobileSize = true;
    if (screenSize.width >= 1010) mobileSize = false;
    return Container(
      //decoration:
      //    BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
      width:  screenSize.width * 0.9,
      //height: mobileSize ? screenSize.width * 0.6 : screenSize.width * 0.25,
      //width: 300,
      height: 300,
      margin: EdgeInsets.symmetric(vertical: 20),
      child: GridView(
        scrollDirection: Axis.horizontal,
        children: data
            .map(
              (td) => ProjectItemLayout(
                MobileProject(
                  pId: td.pId,
                  pAllImgUrl: td.pAllImgUrl,
                  pColor: td.pColor,
                  pDate: td.pDate,
                  pDesc: td.pDesc,
                  pGitUrl: td.pGitUrl,
                  pPubUrl: td.pPubUrl,
                  pImgUrl: td.pImgUrl,
                  pName: td.pName,
                ),
                screenSize
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 500,
          childAspectRatio: 7 / 5,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
