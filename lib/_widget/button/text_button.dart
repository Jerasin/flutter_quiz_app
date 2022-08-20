import 'package:flutter/material.dart';

class MakeTextButton extends StatelessWidget {
  final String label;
  final VoidCallback fn;

  const MakeTextButton({Key? key, required this.fn, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(8.0),
        child: TextButton(
          style: TextButton.styleFrom(
            primary: Colors.cyan,
          ),
          onPressed: fn,
          child: Text(label),
        ));
  }
}
