import 'package:flutter/material.dart';
import 'package:intro_4/ui/custom.dart';

class Home extends StatelessWidget {
  final title;

  Home({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.brown.shade300,
        title: new Text(title),
      ),
      body: new Center(
        child: new CustomButton(),
      ),
    );
  }
}
