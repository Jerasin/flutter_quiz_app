import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetScore;
  const Result({Key? key, required this.totalScore, required this.resetScore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text('Score : $totalScore'),
        ),
        ElevatedButton(onPressed: resetScore, child: const Text('New Game'))
      ],
    );
  }
}
