import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetScore;
  const Result({Key? key, required this.totalScore, required this.resetScore})
      : super(key: key);

  String get resultPhrase {
    if (totalScore == 0) {
      return 'Failed to score';
    } else if (totalScore > 0 && totalScore <= 50) {
      return 'Play again';
    } else if (totalScore > 50) {
      return 'Congratulation';
    } else {
      return 'Error';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text('Score : $totalScore'),
        ),
        const SizedBox(
          height: 30,
        ),
        Center(
          child: Text(
            resultPhrase,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(onPressed: resetScore, child: const Text('New Game')),
      ],
    );
  }
}
