import 'package:flutter/material.dart';

class Scaf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.brown.shade700,
        title: new Text("Tanamo Inc"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search), onPressed: myClicker),
          new IconButton(
              icon: new Icon(Icons.info_outline),
              onPressed: () => debugPrint("Icon tapped"))
        ],
      ),

      // Other properties
      backgroundColor: Colors.grey.shade200,

      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Hello World",
              style: new TextStyle(
                  fontSize: 14.5,
                  fontWeight: FontWeight.w400,
                  color: Colors.deepPurple),
            ),
            new InkWell(
              child: new Text("Welcome!"),
              onTap: () => debugPrint("Button Tapped!"),
            ),
          ],
        ),
      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: () => debugPrint("Pressed!"),
        backgroundColor: Colors.lightGreen,
        tooltip: 'This is my FloatingActionButton!',
        child: new Icon(Icons.add),
      ),

      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.home), title: new Text("Home")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.widgets), title: new Text("News")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.settings), title: new Text("Settings"))
        ],
        onTap: (int i) => debugPrint("Hey Touched $i"),
      ),
    );
  }

  //My Click Method.
  void myClicker() {
    print("myClicker called");
  }
}
