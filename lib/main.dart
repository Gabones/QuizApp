import 'package:flutter/material.dart';
import './question.dart';

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
    List<String> questions = [
      'Qual sua cor favorita?',
      'Qual seu animal preferido?'
    ];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App?'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: () {
                //...
                print('Answer 3 chosen!');
              },
            )
          ],
        ),
      ),
    );
  }
}
