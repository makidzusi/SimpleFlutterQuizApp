import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback onAnswer;

  const Answer({super.key, required this.answerText, required this.onAnswer});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onAnswer,
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[600]),
        child: Text(answerText),
      ),
    );
  }
}
