import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

void main() {
  List Students = [];
  print('This is the practice of map in dart');
  String formatTime() {
    var now = DateTime.now();
    var formatTime = DateFormat("jms").format(now);
    return formatTime;
  }

  void startTimer() {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      // DateTime now = DateTime.now();
      // var formatTime = DateFormat("jms").format(now);
      String time = formatTime();
      print(time);
    });
  }

  startTimer();
  while (true) {
    print("Enter Student Name:");
    String? name = stdin.readLineSync();
    print("Enter Student Degree");
    String? degree = stdin.readLineSync();
    print("Enter Student Age");
    String? age = stdin.readLineSync();
    Map student = {"name": name, "degree": degree, "age": age};
    Students.add(student);
    for (student in Students) {
      print(student);
    }

    print("Are you want Enter another Student!!(yes/no)");
    var responce = stdin.readLineSync()?.toLowerCase();
    if (responce == "no" || responce == "n") {
      print("Thanks for your time!!");
      break;
    }
  }
}
