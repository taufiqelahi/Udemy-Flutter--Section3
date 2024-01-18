import 'package:flutter/material.dart';
import 'package:quiz_app_basics/answer_button.dart';
import 'package:quiz_app_basics/data/questions.dart';
import 'package:quiz_app_basics/my_answer_button.dart';

class MyQuestionScreen extends StatefulWidget {
  const MyQuestionScreen({super.key});

  @override
  State<MyQuestionScreen> createState() => _MyQuestionScreenState();
}

class _MyQuestionScreenState extends State<MyQuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: questions.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(questions[index].question,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              const SizedBox(
                height: 20,
              ),
              ...questions[index].getShuffledAnswers().map((e) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child:MyAnswerButton(answerText: e,)
                  ))
            ],
          ),
        );
      },
    );
  }
}
