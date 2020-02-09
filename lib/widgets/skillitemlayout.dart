import 'package:flutter/material.dart';
import 'package:webbasics/models/skill.dart';

class SkillItemLayout extends StatelessWidget {
  Skill skills;
  SkillItemLayout(this.skills);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration:
      //     BoxDecoration(border: Border.all(width: 3, color: Colors.black)),
      width: 400,
      height: 400,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 50,
            left: 20,
            child: Card(
              elevation: 3,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.symmetric(
                    vertical: BorderSide(color: skills.skillcolor, width: 5),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 110,
                      margin: EdgeInsets.only(left: 30, top: 20),
                      child: Text(
                        skills.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        skills.desc,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 160,
            bottom: 200,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    skills.imgUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              width: 80,
              height: 80,
              // color: skills.skillcolor,
            ),
          )
        ],
      ),
    );
  }
}
