import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Person {
  int userName;
  int passWord;
  String title;

  Person({@required this.userName, @required this.passWord, @required this.title});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      userName: json['userId'],
      passWord: json['id'],
      title: json['title'],
    );
  }
}
