import 'package:flutter/material.dart';

class HireMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      margin: EdgeInsets.only(left: 20),
      child: Container(
        width: 200,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.lightGreenAccent[700],
          border: Border.all(width: 2, color: Colors.green[900]),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          'Hire Me !!',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 26, color: Colors.white),
        ),
      ),
    );
  }
}
