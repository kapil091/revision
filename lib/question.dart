import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questiontext;

  Question(this.questiontext);
  @override
  Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        questiontext,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}
