import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String label;
  final VoidCallback fn;

  const Answer({
    Key? key,
    required this.label,
    required this.fn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
          onPressed: fn,
          child: Text(label)),
    );
  }
}
