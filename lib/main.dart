import 'package:flutter/material.dart';

main() => runApp(QuizApp());

class _QuizAppState extends State<QuizApp> {
  var _selectedQuestion = 0;

  void _response() {
    setState(() {
      _selectedQuestion++;
    });
    print(_selectedQuestion);
  }

  @override
  Widget build(BuildContext context) {
    final quiz = [
      'qual a sua cor favorita?',
      'qual o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quiz[_selectedQuestion], textAlign: TextAlign.center,),
            RaisedButton(
              child: Text("Resposta 1"),
              onPressed: _response,
            ),
            RaisedButton(
              child: Text("Resposta 2"),
              onPressed: _response,
            ),
            RaisedButton(
              child: Text("Resposta 3"),
              onPressed: _response,
            )
          ],
        ),
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() {
    return _QuizAppState();
  }
}
