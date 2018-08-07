import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Stat();
  }
}

class Stat extends State<Home> {
  int _count = 0;

  void _increaser() {
    //called always when updating the UI.
    setState(() {
      _count = _count + 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Tanamo Inc"),
        backgroundColor: Colors.lightGreen,
      ),

      body: new Container(
        child: new Column(
          children: <Widget>[
            //title
            new Center(
              child: new Text(
                "My 10th Incrementor!",
                style: new TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.w500,
                    fontSize: 25.5),
              ),
            ),

            new Expanded(
                child: new Center(
                  child: new Text(
                    '\$$_count',
                    style: new TextStyle(
                        color: _count > 100 ? Colors.yellowAccent : Colors.deepPurple,
                        fontSize: 45.5,
                        fontWeight: FontWeight.w600),
                  ),
                )),

            new Expanded(
                child: new Center(
                  child: new FlatButton(
                      color: Colors.lightGreen,
                      textColor: Colors.white70,
                      onPressed: _increaser,
                      child: new Text(
                        "Click Me!",
                        style: new TextStyle(
                          fontSize: 20.5,
                        ),
                      )),
                ))
          ],
        ),
      ),

    );
  }

}
