import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main () {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  final List<Map<String, Object>> _questions = const [
    {
      'questionText': ' Qual sua cor favorita?',
      'answer': [
        {'text': 'Preto', 'score': 10},
        {'text': 'Vermelho', 'score': 8},
        {'text': 'Verde', 'score': 7},
        {'text': 'Branco', 'score': 6}
      ]
    },
    {
      'questionText': 'Qual seu animal preferido?',
      'answer': [
        {'text': 'Coelho', 'score': 7},
        {'text': 'Cobra', 'score': 1},
        {'text': 'Elefante', 'score': 10},
        {'text': 'Leão', 'score': 8}
      ]
    },
    {
      'questionText': 'Qual seu professor preferido?',
      'answer': [
        {'text': 'Eu', 'score': 10},
        {'text': 'I', 'score': 9},
        {'text': 'Me', 'score': 7},
        {'text': 'Myself', 'score': 6}
      ]
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    _totalScore += score;
    print('Answer chosen!');
    if (_questionIndex < _questions.length) {
      print('We tienemos more perguntas!');
    } else {
      print('No more questions!');
    }
  }

  // var dummy = const ['Hello'];
  // dummy.add('Gabriel'); //não posso adicionar elementos a uma lista const
  // print(dummy); //mesmo a variavel dummy sendo do tipo var

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App?'),
          ),
          body: (_questionIndex < _questions.length)
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion,
                )
              : Result(_totalScore)),
    );
  }
}
