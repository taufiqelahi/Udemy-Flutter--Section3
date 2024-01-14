import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});
  final List<Map<String, dynamic>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map((data) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: data['user_ans'] == data['correct_ans']
                                ? const Color.fromARGB(255, 150, 241, 198)
                                : const Color.fromARGB(255, 249, 133, 241),
                        borderRadius: BorderRadius.circular(100)
                        ),
                        child: Text(
                            ((data['question_index'] as int) + 1).toString(),
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(data['question'],
                                style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(data['user_ans'],
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 202, 171, 252))),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(data['correct_ans'],
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 181, 254, 246))),
                          ],
                        ),
                      )
                    ],
                  ))
              .toList(),
        ),
      ),
    );
  }
}
