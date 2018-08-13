import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Stat();
  }
}

class Stat extends State<Home> {
  final TextEditingController _contrTime = new TextEditingController();
  final TextEditingController _contrDist = new TextEditingController();
  int radioValue = 0;
  double _finalResult = 0.0;
  String _output = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Tanamo Inc"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.blueGrey,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          padding: const EdgeInsets.all(2.2),
          children: <Widget>[
            new Image.asset(
              'images/logo.png',
              width: 120.0,
              height: 120.0,
            ),
            new Container(
              margin: const EdgeInsets.all(4.0),
              alignment: Alignment.center,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _contrTime,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        labelText: 'Input Your Time',
                        hintText: 'in seconds',
                        icon: new Icon(
                          Icons.timer,
                        )),
                  ),

                  new TextField(
                    controller: _contrDist,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        labelText: 'Input Your Distance',
                        hintText: 'in meters',
                        icon: new Icon(
                          Icons.directions_run,
                        )),
                  ),

                  new Padding(padding: new EdgeInsets.all(5.0)),

                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Radio<int>(
                          activeColor: Colors.brown,
                          value: 1,
                          groupValue: radioValue,
                          onChanged: radioListener),
                      new Text(
                        "m/s",
                        style: new TextStyle(color: Colors.white30),
                      ),
                      new Radio<int>(
                          activeColor: Colors.red,
                          value: 2,
                          groupValue: radioValue,
                          onChanged: radioListener),
                      new Text(
                        "km/h",
                        style: new TextStyle(color: Colors.white30),
                      ),
                    ],
                  ),

                  //Result text
                  new Padding(padding: new EdgeInsets.all(15.0)),

                  new Text(
                    _contrDist.text.isEmpty && _contrTime.text.isEmpty
                        ? "Empty Field"
                        : _output + " ",
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 19.4,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Calculate Speed Logic.
  double calcSpeed(String distance, String time) {
    if (int.parse(distance).toString().isNotEmpty && int.parse(distance) > 0) {
      return double.parse(distance) / double.parse(time);
    } else {
      print("Try Again!");
      return 0.00;
    }
  }

  // Radio Listener Logic
  void radioListener(int value) {
    setState(() {
      radioValue = value;
      switch (radioValue) {
        case 1:
          _finalResult = calcSpeed(_contrTime.text, _contrDist.text);
          _output =
              "Your speed in m/s is given as: ${_finalResult.toStringAsFixed(1)}";
          break;
        case 2:
          _finalResult = calcSpeed(_contrTime.text, _contrDist.text);

          _finalResult = ((_finalResult) * (3.6));
          _output =
              "Your speed in km/h is given as: ${_finalResult.toStringAsFixed(1)}";
          break;
        default:
          print("!!!");
      }
    });
  }

/** Convention from m/s to km/s.
 *
 **  1 m/s is given by 3.6 km/h.
 *
 * Speed is given as distance(D) covered over given time period(T).
 *
 **/

}
