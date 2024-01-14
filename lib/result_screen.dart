import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_basics/data/questions.dart';

class ResultScreen extends StatelessWidget {
  final List<String> onChoose;
  const ResultScreen({super.key, required this.onChoose});

  @override
  Widget build(BuildContext context) {
    int index = 0;
    print(onChoose);
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: ListView.builder(
          itemCount: onChoose.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Text(questions[index].question,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Card(
                  child: ListTile(
                    title: Text(onChoose[index]),
                    subtitle: Text(questions[index].options[0]),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
