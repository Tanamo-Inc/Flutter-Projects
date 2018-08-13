import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intro_9/ui/home.dart';

//todo: Fix Errors

void main() async {
  runApp(new MaterialApp(
    title: "Tanamo Inc",
    home: new Home(),
  ));

  // String _data = await getJson();
  //print(_data);

  List _data = await getJson();
  print(_data[1]['title']);
}

//Future<String> getJson() async {
//  String apiUrl = 'https://jsonplaceholder.typicode.com/posts';
//  http.Response response = await http.get(apiUrl);
//  return json.decode(response.body).toString();
//}

Future<List> getJson() async {
  String apiUrl = 'https://jsonplaceholder.typicode.com/posts';
  http.Response response = await http.get(apiUrl);
  return json.decode(response.body);
}
