import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_basics/data/questions.dart';
import 'package:quiz_app_basics/question-sumary.dart';

class ResultScreen extends StatelessWidget {
  final List<String> onChoose;
  const ResultScreen({super.key, required this.onChoose});
  List<Map<String, dynamic>> getSummaryData() {
    List<Map<String, dynamic>> summary = [];
    for (int i = 0; i < onChoose.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_ans': questions[i].options[0],
        'user_ans': onChoose[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> summaryData = getSummaryData();
    final totalCorrectAns = summaryData
        .where((element) => element['correct_ans'] == element['user_ans'])
        .length;
    print(totalCorrectAns);
    return Center(
      child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'You completed $totalCorrectAns out of ${questions.length}',
                style:  TextStyle(
              color: Color.fromARGB(250, 227, 210, 250), fontSize: 24),
              ),
              SizedBox(height: 10,),
              QuestionSummary(summaryData: summaryData),
              TextButton(onPressed: () {}, child: Text('Reset')),
            ],
          )),
    );
  }
}
