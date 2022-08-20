import 'package:flutter/material.dart';
import './_widget/button/elevated_button.dart';
import './_widget/button/text_button.dart';
import './_widget/button/outlined_button.dart';

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
    // return MakeElevatedButton(label: label, fn: fn);

    return Column(
      children: [
        // Text button have not background Color
        MakeTextButton(label: label, fn: fn),
        MakeElevatedButton(label: label, fn: fn),
        MakeOutLinedButton(label: label, fn: fn),
      ],
    );
  }
}
