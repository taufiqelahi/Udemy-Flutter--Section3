import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_basics/answer_button.dart';
import 'package:quiz_app_basics/data/questions.dart';
import 'package:quiz_app_basics/result_screen.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int index= 0;
  void nextQuestion(){
    setState(() {
    if(index==questions.length-1) {
      //Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen()) );
    }else{
      index++;
    }
    });
  }
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[index];

    return Center(
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                currentQuestion.question,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                )
              ),
              const SizedBox(
                height: 16,
              ),
              ...currentQuestion
                  .getShuffledAnswers()
                  .map((e) => AnswerButton(answerText: e, onPressed: nextQuestion)),
            ],
          ),
        ),
      ),
    );
  }
}
