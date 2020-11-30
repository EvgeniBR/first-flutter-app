import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resulePhrase {
    String resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are innocent!';
    } else if (resultScore <= 14) {
      resultText = 'Pretty Likeable!';
    } else if (resultScore <= 24) {
      resultText = 'You are Dark!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resulePhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        FlatButton(
          onPressed: resetHandler,
          child: Text('Restart Quiz!'),
          textColor: Colors.green,
        )
      ],
    ));
  }
}
