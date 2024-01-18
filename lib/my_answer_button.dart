import 'package:flutter/material.dart';

class MyAnswerButton extends StatefulWidget {
  const MyAnswerButton({
    super.key,
    required this.answerText,
  });
  final String answerText;

  @override
  State<MyAnswerButton> createState() => _MyAnswerButtonState();
}

class _MyAnswerButtonState extends State<MyAnswerButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 40,
          ),
          backgroundColor: const Color.fromARGB(255, 33, 1, 95),
          foregroundColor: isPressed ? Colors.black : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        onPressed: () {
          setState(() {
            isPressed = !isPressed;
          });
        },
        child: Text(
          widget.answerText,
          textAlign: TextAlign.center,
        ));
  }
}
