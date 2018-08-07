import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.orange,
      alignment: Alignment.center,
//
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            "First Item",
            textDirection: TextDirection.ltr,
            style: new TextStyle(color: Colors.black),
          ),
          new Text(
            "Second Item",
            textDirection: TextDirection.ltr,
            style: new TextStyle(color: Colors.deepPurple),
          ),
          new Text(
            "Third Item",
            textDirection: TextDirection.ltr,
            style: new TextStyle(color: Colors.deepOrange),
          ),
          new Container(
            color: Colors.deepOrange.shade50,
            alignment: Alignment.bottomLeft,
            child: new Text(
              "Below will contain the Rows and Stack widget",
              textDirection: TextDirection.ltr,
              style: new TextStyle(color: Colors.blue, fontSize: 10.1),
            ),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Item 1",
                textDirection: TextDirection.ltr,
                style: new TextStyle(fontSize: 12.9),
              ),
              new Text("Item 2",
                  textDirection: TextDirection.ltr,
                  style: new TextStyle(fontSize: 12.9)),
              const Expanded(child: const Text("Item 3"))
            ],
          ),
          new Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              const Text("One"),
              const Text("Two"),
              const Text("Three"),
            ],
          ),
        ],
      ),
    );
  }
}
