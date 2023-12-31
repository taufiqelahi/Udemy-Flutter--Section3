import 'package:flutter/material.dart';
import 'package:quiz_app_basics/start_page.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        body: Container(
            decoration: BoxDecoration(

                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.purpleAccent, Colors.deepPurple])),
            child: StartPage())),
  ));
}
