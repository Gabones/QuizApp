import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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

  final List<Map> questions = [
    {
      'questionText':' Qual sua cor favorita?',
      'answer': ['Preto', 'Vermelho', 'Verde', 'Branco']
    },
    {
      'questionText':'Qual seu animal preferido?',
      'answer': ['Coelho', 'Cobra', 'Elefante', 'Leão']
    },
    {
      'questionText': 'Qual seu professor preferido?',
      'answer': ['Eu','I', 'Me', 'Myself']
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Answer chosen!');
    if (_questionIndex < questions.length) {
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
        body: (_questionIndex < questions.length) ? Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answer'] as List<String>).map((question) {
              return Answer(_answerQuestion ,question);
            }).toList(),
            // ElevatedButton(
            //   child: Text('Resposta 1'),
            //   onPressed: _answerQuestion,
            // ),
            // ElevatedButton(
            //   child: Text('Resposta 2'),
            //   onPressed: () => print('Answer 2 chosen!'),
            // ),
            // ElevatedButton(
            //   child: Text('Resposta 3'),
            //   onPressed: () {
            //     //...
            //     print('Answer 3 chosen!');
            //   },
            // ),
            // RaisedButton(
            //     color: Colors.pink,
            //     child: Text(
            //       'Raised Example',
            //       style: TextStyle(color: Colors.white),
            //     ),
            //     onPressed: () {
            //       print('This does not do anything');
            //     }
            // ),
            // Answer(_answerQuestion),
          ],
        ) : Center(
          child: Text('Fim')
        ),
      ),
    );
  }
}
