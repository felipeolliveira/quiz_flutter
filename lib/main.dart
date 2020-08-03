import 'package:flutter/material.dart';
import 'package:quiz_flutter/response_button.dart';
import 'package:quiz_flutter/question.dart';

main() => runApp(QuizApp());

class _QuizAppState extends State<QuizApp> {
  var _selectedQuestion = 0;

  void _response() {
    setState(() {
      _selectedQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final quiz = [
      {
        'question': 'Qual é a sua cor favorita?',
        'options': ['Preto', 'Vermelho', 'Verde', 'Azul']
      },
      {
        'question': 'Qual é a sua comida favorita?',
        'options': ['Macarronada', 'Picanha', 'Salada', 'Doces']
      },
      {
        'question': 'Qual é o seu tipo de filme favorito?',
        'options': [
          'Aventura',
          'Romance',
          'Ficção Científica',
          'Ação',
          'Comédia'
        ]
      }
    ];

    List<String> allOptions = quiz[_selectedQuestion]['options'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Question(quiz[_selectedQuestion]['question']),
            ...allOptions.map((text) => ResponseButton(text, _response)).toList()
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
