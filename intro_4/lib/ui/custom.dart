import 'package:flutter/material.dart';

//My Custom Button
class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        final snack = new SnackBar(
          content: new Text("Hello World!!!"),
          backgroundColor: Theme.of(context).backgroundColor,
          duration:
              new Duration(hours: 0, minutes: 0, seconds: 0,milliseconds: 600, microseconds: 0),
        );
        Scaffold.of(context).showSnackBar(snack);
      },
      child: new Container(
        padding: new EdgeInsets.all(15.00),
        decoration: new BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: new BorderRadius.circular(5.5)),
        child: new Text("Click Me"),
      ),
    );
  }
}
