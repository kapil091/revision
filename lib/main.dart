import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff885566),
          centerTitle: true,
          title: Text(
            "HELLO",
          ),
        ),

      ),
    );
  }
}
