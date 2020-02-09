import 'package:flutter/material.dart';
import 'package:webbasics/screens/storycenter.dart';
import 'package:webbasics/screens/storyending.dart';
import 'package:webbasics/screens/storynavbar.dart';
import 'package:webbasics/screens/storystart.dart';
import 'package:webbasics/screens/storysuspense.dart';
import 'package:webbasics/screens/storytwist.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // decoration: BoxDecoration(
          //   border: Border.all(width: 5, color: Colors.purple),
          // ),
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
          constraints: BoxConstraints(maxWidth: 1200, minWidth: 480),
          child: Column(
            children: <Widget>[
              StoryNavBar(),
              SizedBox(height: 10),
              Divider(thickness: 5, color: Colors.lightGreenAccent),
              SizedBox(height: 20),
              StoryStart(),
              SizedBox(height: 10),
              Divider(thickness: 5, color: Colors.lightGreenAccent),
              SizedBox(height: 20),
              StoryCenter(),
              Divider(thickness: 5, color: Colors.orange),
              SizedBox(height: 20),
              StoryTwist(),
              StorySuspense(),
              StoryEnding(),
            ],
          ),
        ),
      ),
    );
  }
}
