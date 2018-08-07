import 'package:flutter/material.dart';
import 'package:intro_4/ui/home.dart';

void main() {
  var title = "Tanamo Inc";

  runApp(new MaterialApp(
    title: title,
    home: new Home(title: title),
  ));
}
