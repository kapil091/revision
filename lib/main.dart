import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
 @override

  void _AnSwer(int n) {
   setState(() {
     if(questionIndex <1)
     questionIndex = questionIndex + 1;
     else
       questionIndex = 0;
   });

    print(" Answer chosen is $n!");
  }

  @override
  Widget build(BuildContext context) {

   var question = [
      'what is your favorite color ?',
      'what your favorite animal ? ',
      ' ',
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff885566),
            centerTitle: true,
            title: Text(
              "HELLO ",
            ),
          ),
          body: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Question(question[questionIndex]),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: () => _AnSwer(1),
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => _AnSwer(2),
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: () => _AnSwer(3),
              )
            ],
          )),
    );
  }
}
