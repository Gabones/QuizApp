import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetState;

  Result(this.totalScore, this.resetState);

  String get resultPhrase {
    var resultText;
    if (totalScore < 27) {
      resultText = 'Não temos muito a ver';
    } else if (totalScore >= 27) {
      resultText = 'Somos parecidos em algumas coisas';
    } else {
      resultText = 'Sei lá?!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            Text(
              resultPhrase,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(child: Text('Restart'), onPressed: resetState)
          ],
        )
    );
  }
}
