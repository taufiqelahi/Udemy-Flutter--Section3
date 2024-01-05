import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  final void Function() changeScreen;
  const StartPage({super.key, required this.changeScreen});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(
          height: 80,
        ),
        const Text(
          'Learn Flutter to fun way!',
          style: TextStyle(
              color: Color.fromARGB(250, 227, 210, 250), fontSize: 24),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white
          ),
            onPressed: changeScreen,
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                  color: Color.fromARGB(255, 227, 210, 250), fontSize: 16),
            ), icon: const Icon(Icons.arrow_right_alt),)
      ],
    ));
  }
}
