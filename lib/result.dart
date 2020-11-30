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
<<<<<<< HEAD
    } else if (resultScore <= 24) {
=======
    } else if (resultScore <= 20) {
>>>>>>> 3246a912ce433fc1782184ac653d21874eb53576
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
