import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_basics/data/questions.dart';
import 'package:quiz_app_basics/question-sumary.dart';

class ResultScreen extends StatelessWidget {
  final List<String> onChoose;
  final void Function() onRestart;
  const ResultScreen(
      {super.key, required this.onChoose, required this.onRestart});
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
          // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,


            children: [
              Text(
                'You answered $totalCorrectAns out of ${questions.length} questions correctly!',
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 230, 200, 253),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              QuestionSummary(summaryData: summaryData),
              const SizedBox(
                height: 30,
              ),
              TextButton.icon(
                onPressed: onRestart,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.refresh),
                label: const Text('Restart Quiz!'),
              )
            ],
          )),
    );
  }
}
