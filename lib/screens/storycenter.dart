import 'package:flutter/material.dart';
import 'package:webbasics/models/skill.dart';
import 'package:webbasics/models/skillsdata.dart';
import 'package:webbasics/widgets/skillitemlayout.dart';

class StoryCenter extends StatelessWidget {
  bool mobileSize;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    if (screenSize.width <= 1010) mobileSize = true;
    if (screenSize.width >= 1010) mobileSize = false;
    return Container(
      width: screenSize.width * 0.9,
      height: mobileSize ? screenSize.width * 0.5 : screenSize.width * 0.2,
      margin: EdgeInsets.symmetric(vertical: 20),
      child: GridView(
        scrollDirection: Axis.horizontal,
        children: TECH_DATA
            .map(
              (td) => SkillItemLayout(
                Skill(
                  id: td.id,
                  desc: td.desc,
                  imgUrl: td.imgUrl,
                  name: td.name,
                  skillcolor: td.skillcolor,
                ),
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 400,
          childAspectRatio: 5 / 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 50,
        ),
      ),
    );
  }
}
