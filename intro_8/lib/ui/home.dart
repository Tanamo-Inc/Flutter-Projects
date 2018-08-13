import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Stat();
  }
}

class Stat extends State<Home> {
  double inches = 0.0;
  double result = 0.0;
  String _output = "";
  String _finalResult = "";
  final TextEditingController _ageContr = new TextEditingController();
  final TextEditingController _heightContr = new TextEditingController();
  final TextEditingController _weightContr = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("BMI"),
        backgroundColor: Colors.brown,
      ),
      backgroundColor: Colors.blueGrey,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          padding: EdgeInsets.all(5.5),
          children: <Widget>[
            new Image.asset(
              'images/logo.png',
              width: 110.0,
              height: 110.0,
            ),
            new Container(
              margin: const EdgeInsets.all(3.0),
              height: 250.0,
              width: 295.0,
              color: Colors.grey.shade300,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _ageContr,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        labelText: 'Age',
                        hintText: 'e.g: 19',
                        icon: new Icon(Icons.person_outline)),
                  ),
                  new TextField(
                      controller: _heightContr,
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                          labelText: 'Height in feet',
                          hintText: 'e.g 5.5',
                          icon: new Icon(Icons.insert_chart))),
                  new TextField(
                      controller: _weightContr,
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                          labelText: 'Weight in lbs',
                          hintText: 'e.g 160',
                          icon: new Icon(Icons.line_weight))),
                  new Padding(padding: new EdgeInsets.all(10.6)),
                  new Container(
                    alignment: Alignment.center,
                    child: new RaisedButton(
                      onPressed: _calcBMI,
                      color: Colors.deepOrange,
                      child: new Text('Calculate'),
                      textColor: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "$_finalResult ",
                  style: new TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      fontSize: 20.5),
                ),
                new Padding(padding: const EdgeInsets.all(5.0)),
                new Text(
                  "$_output ",
                  style: new TextStyle(
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                      fontSize: 19.9),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _calcBMI() {
    setState(() {
      int age = int.parse(_ageContr.text);
      double height = double.parse(_heightContr.text);
      inches = height * 12;
      double weight = double.parse(_weightContr.text);

      if ((_ageContr.text.isNotEmpty || age > 0) &&
          ((_heightContr.text.isNotEmpty || inches > 0) &&
              (_weightContr.text.isNotEmpty || weight > 0))) {
        result = weight / (inches * inches) * 703;

        if (double.parse(result.toStringAsFixed(1)) < 18.5) {
          _output = "Underweight";
          print(_output);
        } else if (double.parse(result.toStringAsFixed(1)) >= 18.5 &&
            result < 25) {
          _output = "Great Shape!"; // Normal
          print(_output);
        } else if (double.parse(result.toStringAsFixed(1)) >= 25.0 &&
            result < 30) {
          _output = "Overweight";
        } else if (double.parse(result.toStringAsFixed(1)) >= 30.0) {
          _output = "Obese";
        }
      } else {
        result = 0.0;
      }
    });

    _finalResult = "Your BMI: ${result.toStringAsFixed(1)}";

    /**
     **
     **   BMI	Weight Status
     *   Below 18.5	Underweight
     *  18.5 – 24.9	Normal
     *  25.0 – 29.9	Overweight
     *  30.0 and Above	Obese
     **
     **/
  }
}
