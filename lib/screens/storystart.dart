import 'package:flutter/material.dart';
import 'package:webbasics/widgets/introCard.dart';

class StoryStart extends StatelessWidget {
  bool mobileSize;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    if (screenSize.width <= 1010) mobileSize = true;
    if (screenSize.width >= 1010) mobileSize = false;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: mobileSize
          ? Column(
              children: <Widget>[
                Container(
                  width: screenSize.width * 0.6,
                  height: screenSize.width * 0.6,
                  decoration: new BoxDecoration(
                    border: Border.all(
                        width: 5, color: Colors.lightGreenAccent[400]),
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/akshaybengani.jpg"),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                IntroCard(
                    "Hi, I am a Tech Enthusiast who loves to work and integrate different tech stacks to build something crazy, I am not born with Tech but I am born for Tech and everything inside me and my brain works like an async program and I am a creature developed with a computer software Yes you can call me a Cyborg, because I agree I am the terminator."),
                SizedBox(height: 20),
                IntroCard("I am a Flutter Developer and Freelancer have experience of Designing Industry-leading Graphics and amazing apps built for my clients, Always look for Highly motivated people who are born for tech. "),
              ],
            )
          : Column(
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: screenSize.width * 0.2,
                      height: screenSize.width * 0.2,
                      decoration: new BoxDecoration(
                        border: Border.all(
                            width: 5, color: Colors.lightGreenAccent[400]),
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/akshaybengani.jpg"),
                        ),
                      ),
                    ),
                    IntroCard("Hi, I am a Tech Enthusiast who loves to work and integrate different tech stacks to build something crazy, I am not born with Tech but I am born for Tech and everything inside me and my brain works like an async program and I am a creature developed with a computer software Yes you can call me a Cyborg, because I agree I am the terminator."),
                  ],
                ),
                IntroCard("I am a Flutter Developer and Freelancer have experience of Designing Industry-leading Graphics and amazing apps built for my clients, Always look for Highly motivated people who are born for tech. "),
            ],
          ),
    );
  }
}
