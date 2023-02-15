import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _onBtnPressed() {
    setState(() {
      if (_questionIndex < questions.length - 1) {
        _questionIndex = _questionIndex + 1;
      }
    });
  }

  int _questionIndex = 0;
  List<String> questions = [
    "Твой любимый цвет?",
    "Лучшее время года?",
    "Ты кто]?"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("QuizApp"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Question(
            questionText: questions[_questionIndex],
          ),
          Answer(
            answerText: "answer",
            onAnswer: _onBtnPressed,
          )
        ],
      ),
    ));
  }
}
