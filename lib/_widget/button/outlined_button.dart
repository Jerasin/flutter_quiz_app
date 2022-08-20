import 'package:flutter/material.dart';

class MakeOutLinedButton extends StatelessWidget {
  final String label;
  final VoidCallback fn;

  const MakeOutLinedButton({
    Key? key,
    required this.label,
    required this.fn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(8.0),
      child: OutlinedButton(
          // Option 1
          style: OutlinedButton.styleFrom(
              primary: Colors.cyan,
              side: const BorderSide(color: Colors.green)),
          // Option 2
          // style: ButtonStyle(
          //   backgroundColor: MaterialStateProperty.all(Colors.red),
          //   foregroundColor: MaterialStateProperty.all(Colors.black),
          // ),
          onPressed: fn,
          child: Text(label)),
    );
  }
}
