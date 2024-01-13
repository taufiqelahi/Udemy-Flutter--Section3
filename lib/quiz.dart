import 'package:flutter/material.dart';
import 'package:quiz_app_basics/data/questions.dart';
import 'package:quiz_app_basics/questions_screen.dart';
import 'package:quiz_app_basics/result_screen.dart';
import 'package:quiz_app_basics/start_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget ?activeScreen ;

  @override
  void initState() {
    activeScreen=  StartPage(changeScreen: changeScreen,);
    // TODO: implement initState
    super.initState();
  }
  void changeScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
              decoration: const BoxDecoration(

                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.purpleAccent, Colors.deepPurple])),
              child:activeScreen)),
    );
  }
}
