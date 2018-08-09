import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
}

class LoginState extends State<Home> {
  final TextEditingController _userC = new TextEditingController();
  final TextEditingController _passC = new TextEditingController();
  String _message = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      backgroundColor: Colors.blueGrey,
      body: new Container(
        alignment: Alignment.bottomCenter,
        child: new ListView(
          children: <Widget>[
            //Adding Our Profile
            new Image.asset(
              'images/logo.png',
              width: 120.0,
              height: 120.0,
//              color: Colors.pink,
            ),

            //Forms
            new Container(
              height: 180.0,
              width: 360.0,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  //Username Field.
                  new TextField(
                    controller: _userC,
                    decoration: new InputDecoration(
                        hintText: 'Username', icon: new Icon(Icons.person)),
                  ),

                  //Password Field.
                  new TextField(
                    controller: _passC,
                    decoration: new InputDecoration(
                      hintText: 'Password',
                      icon: new Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),

                  new Padding(padding: new EdgeInsets.all(15.5)),

                  new Center(
                    child: new Row(
                      children: <Widget>[
                        // Login button
                        new Container(
                          margin: const EdgeInsets.only(left: 35.5),
                          child: new RaisedButton(
                              onPressed: _dispMessage,
                              color: Colors.redAccent,
                              child: new Text("Login",
                                  style: new TextStyle(
                                      color: Colors.white, fontSize: 16.9))),
                        ),

                        // Clear button
                        new Container(
                          margin: const EdgeInsets.only(left: 125.5),
                          child: new RaisedButton(
                              onPressed: _del,
                              color: Colors.redAccent,
                              child: new Text("Clear",
                                  style: new TextStyle(
                                      color: Colors.white, fontSize: 16.9))),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            new Padding(padding: const EdgeInsets.all(14.0)),

            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "$_message",
                  style: new TextStyle(
                      color: Colors.white,
                      fontSize: 19.4,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _dispMessage() {
    setState(() {
      if (_userC.text.isNotEmpty && _passC.text.isNotEmpty) {
        _message = _userC.text;
      } else
        _message = "Please Login";
    });
  }

  void _del() {
    setState(() {
      _userC.clear();
      _passC.clear();
      _message = "";
    });
  }
}
