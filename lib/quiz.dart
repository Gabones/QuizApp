import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerQuestion
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answer'] as List<Map<String,Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
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
    );
  }
}

