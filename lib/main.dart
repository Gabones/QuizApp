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

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    List<Map> questions = [
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


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App?'),
        ),
        body: Column(
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
        ),
      ),
    );
  }
}
