import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are breathtaking!';
    } else if (resultScore <= 15) {
      resultText = 'You\'re totally breathtaking!';
    } else {
      resultText = 'You\'re son of a bitch, I\'m in';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Restart Quiz!'),
          textColor: Colors.blue,
          onPressed: resetHandler,
        ),
      ],
    ));
  }
}
