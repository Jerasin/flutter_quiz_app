import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => (runApp(MyApp()));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What \'s yours favorite color?',
      'answers': [
        {'text': 'Green', 'score': 10},
        {'text': 'Red', 'score': 20},
        {'text': 'Yellow', 'score': 30},
      ],
    },
    {
      'questionText': 'What \'s yours favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 20},
        {'text': 'Bird', 'score': 30},
        {'text': 'Lion', 'score': 15},
      ],
    }
  ];

  var _index = 0;
  var _totalScore = 0;
  // void _answerQuestion() {
  //   print('this is answer');
  // }
  void _answerQuestion(int score) => ({
        _totalScore += score,

        // print(_total);

        setState(() => {
              // if (_index < questions.length - 1)
              //   {_index = _index + 1}
              // else
              //   {_index = 0}
              _index += 1
            })
      });

  void _resetScore() => ({
        _totalScore = 0,
        setState(() => {
              // if (_index < questions.length - 1)
              //   {_index = _index + 1}
              // else
              //   {_index = 0}
              _index = 0
            })
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: const Text('Welcome to Flutter'),
              backgroundColor: Colors.red),
          body: _index < questions.length
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                      Quiz(
                        questions: questions,
                        color: Colors.amberAccent,
                        fn: _answerQuestion,
                        index: _index,
                      )
                    ])
              : Result(totalScore: _totalScore, resetScore: _resetScore)),
    );
  }
}
