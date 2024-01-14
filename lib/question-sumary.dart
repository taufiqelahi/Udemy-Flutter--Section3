import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});
  final List<Map<String, dynamic>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData
          .map((data) => Row(
                children: [
                  Text(((data['question_index'] as int) + 1).toString(),
                      style:
                          GoogleFonts.lato(color: Colors.black, fontSize: 20)),
                  Expanded(
                    child: Column(
                      children: [
                        Text(data['question'],
                            style: GoogleFonts.lato(
                                color: Colors.black, fontSize: 20)),
                        SizedBox(
                          height: 5,
                        ),
                        Text(data['correct_ans'],
                            style: GoogleFonts.lato(
                                color: Colors.black, fontSize: 16)),
                        SizedBox(
                          height: 5,
                        ),
                        Text(data['user_ans'],
                            style: GoogleFonts.lato(
                                color: Colors.black, fontSize: 16)),
                      ],
                    ),
                  )
                ],
              ))
          .toList(),
    );
  }
}
