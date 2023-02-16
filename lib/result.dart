import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback onReset;

  const Result({super.key, required this.resultScore, required this.onReset});

  String get resultPhrase {
    return "Вы прошли тест с результатом: $resultScore!";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(resultPhrase,
              textAlign: TextAlign.center,
              style:
                  const TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: onReset, child: const Text('Пройти еще раз!'))
        ],
      ),
    );
  }
}
