import 'package:flutter/material.dart';
import 'package:webbasics/models/skill.dart';
import 'package:webbasics/data/skillsdata.dart';
import 'package:webbasics/widgets/skillitemlayout.dart';

class StoryCenter extends StatelessWidget {
  bool mobileSize;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    if (screenSize.width <= 1010) mobileSize = true;
    if (screenSize.width >= 1010) mobileSize = false;
    return Column(
      children: <Widget>[
        SkillHeadName('TECH STACK'),
        MyCustomGrid(screenSize, SKILLS_TECH_DATA),
        Divider(thickness: 5, color: Colors.lightGreenAccent),
        SizedBox(height: 20),
        SkillHeadName('DATABASE & CLOUD'),
        MyCustomGrid(screenSize, SKILLS_DATABASE_DATA),
        Divider(thickness: 5, color: Colors.lightGreenAccent),
        SizedBox(height: 20),
        SkillHeadName('LANGUAGES'),
        MyCustomGrid(screenSize, SKILLS_LANGUAGE_DATA),
        Divider(thickness: 5, color: Colors.lightGreenAccent),
        SizedBox(height: 20),
        SkillHeadName('DEVOPS'),
        MyCustomGrid(screenSize, SKILLS_DEVOPS_DATA),
        Divider(thickness: 5, color: Colors.lightGreenAccent),
        SizedBox(height: 20),
        SkillHeadName('ADDITIONAL'),
        MyCustomGrid(screenSize, SKILLS_OTHERSKILL_DATA),
      ],
    );
  }
}

class SkillHeadName extends StatelessWidget {
  final String name;
  SkillHeadName(this.name);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          child: Text(
            name,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Icon(Icons.arrow_right),
      ],
    );
  }
}

class MyCustomGrid extends StatelessWidget {
  final Size screenSize;
  List<Skill> data;
  MyCustomGrid(this.screenSize, this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      //decoration:
      //    BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
      width: screenSize.width * 0.9,
      height: 300,
      margin: EdgeInsets.symmetric(vertical: 20),
      child: GridView(
        scrollDirection: Axis.horizontal,
        children: data
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
