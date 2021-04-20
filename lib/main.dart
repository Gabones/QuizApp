import 'package:flutter/material.dart';

// void main () {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
            Text(questions[0]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: null,
            )
          ],
        ),
      ),
    );
  }
}
