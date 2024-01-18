import 'package:flutter/material.dart';
import 'package:quiz_app_basics/data/questions.dart';
import 'package:quiz_app_basics/my_question_screen.dart';
import 'package:quiz_app_basics/questions_screen.dart';
import 'package:quiz_app_basics/result_screen.dart';
import 'package:quiz_app_basics/start_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  List<String> onChoose = [];

  @override
  void initState() {
    activeScreen = StartPage(
      changeScreen: changeScreen,
    );
    // TODO: implement initState
    super.initState();
  }
void reStart(){
    onChoose=[];
    setState(() {
      activeScreen=QuestionsScreen(getAnswer: addAnswer);
    });
}
  void addAnswer(String answer) {
    onChoose.add(answer);
    if (onChoose.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(
          onChoose: onChoose, onRestart:reStart,
        );
      });
    }
  }

  void changeScreen() {
    setState(() {
      activeScreen=MyQuestionScreen();
      // activeScreen = QuestionsScreen(
      //   getAnswer: addAnswer,
      // );
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
                      colors: [
                    Color.fromARGB(255, 78, 13, 151),
                    Color.fromARGB(255, 107, 15, 168),
                  ])),
              child: activeScreen)),
    );
  }
}
