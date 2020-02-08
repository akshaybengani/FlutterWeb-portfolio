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
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  padding: EdgeInsets.all(20),
                  child: Text(
                    skills.desc,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 120,
            bottom: 150,
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
