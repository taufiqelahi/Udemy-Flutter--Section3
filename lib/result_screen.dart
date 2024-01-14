import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_basics/data/questions.dart';

class ResultScreen extends StatelessWidget {
  final List<String> onChoose;
  const ResultScreen({super.key, required this.onChoose});
  List<Map<String,dynamic>>getSummaryData(){
    List<Map<String,dynamic>>summary=[];
    for(int i=0;i<onChoose.length;i++){
      summary.add({
        'question_index': i,
        'question':questions[i].question,
        'correct_ans':questions[i].options[0],
        'user_ans':onChoose[i],
      }
      );
    }
    return summary;

  }

  @override
  Widget build(BuildContext context) {
    print(getSummaryData());
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          children: [
            Text('kkk'),
            Text('k'),
            TextButton(onPressed: (){}, child: Text('Reset')),
          ],
        )
      ),
    );
  }
}
