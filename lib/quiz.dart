import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int index;
  final Color color;
  final Function fn;
  const Quiz(
      {Key? key,
      required this.questions,
      required this.index,
      required this.color,
      required this.fn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            questionText: questions[index]['questionText']?.toString(),
            color: color,
            fontSize: 22),
        ...(questions[index]['answers'] as List<Map<String, Object>>)
            .map((item) => Answer(
                label: item['text'].toString(), fn: () => fn(item['score'])))
            .toList()
      ],
    );
  }
}
