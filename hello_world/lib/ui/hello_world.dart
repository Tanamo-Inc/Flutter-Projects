import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors.deepOrange,
        child: new Center(
          child: new Text(
            "Hello World !",
            textDirection: TextDirection.ltr,
            style: new TextStyle(
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
                fontSize: 45.00),
          ),
        ));
  }
}
