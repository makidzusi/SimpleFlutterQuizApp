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

  var questions = [
    {
      'questionText': "Какой твой любимый цвет?",
      'answers': ['Красный', 'Черный', 'Зеленый']
    },
    {
      'questionText': "Какой твой любимый фрэймворк?",
      'answers': ['asp.net', 'flutter', 'vue']
    }
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
            questionText: questions[_questionIndex]['questionText'] as String,
          ),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(answerText: answer, onAnswer: _onBtnPressed);
          }).toList()
        ],
      ),
    ));
  }
}
