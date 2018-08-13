import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Stat();
  }
}

class Stat extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("JSON PARSER"),
        backgroundColor: Colors.brown,
      ),
      backgroundColor: Colors.blueGrey,
      body: new Center(
        child: new Text(
          'Parsing...',
        ),
      ),
    );
  }
}
