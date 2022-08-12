import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String? questionText;
  final Color color;
  final double fontSize;

  const Question(
      {Key? key,
      this.questionText,
      required this.color,
      required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(8.0),
      child: Text(
        questionText ?? '',
        style: TextStyle(color: color, fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
