import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _onBtnPressed(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      if (_questionIndex <= _questions.length - 1) {
        _questionIndex = _questionIndex + 1;
      }
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  int _totalScore = 0;
  int _questionIndex = 0;

  final _questions = const [
    {
      'questionText': "Какой твой любимый цвет?",
      'answers': [
        {'text': 'Красный', 'score': 10},
        {'text': 'Черный', 'score': 5},
        {'text': 'Зеленый', 'score': 1}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("QuizApp"),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              questions: _questions,
              answerQuestion: _onBtnPressed,
              questionIndex: _questionIndex)
          : Result(
              resultScore: _totalScore,
              onReset: _resetQuiz,
            ),
    ));
  }
}
