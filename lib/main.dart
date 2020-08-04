import 'package:flutter/material.dart';
import 'package:quiz_flutter/quiz_container.dart';

import 'package:quiz_flutter/result.dart';

main() => runApp(QuizApp());

class _QuizAppState extends State<QuizApp> {
  final _quiz = const [
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
      'options': ['Aventura', 'Romance', 'Ficção Científica', 'Ação', 'Comédia']
    }
  ];

  var _selectedQuestion = 0;

  void _response() {
    if (_haveSelectedQuestion) {
      setState(() {
        _selectedQuestion++;
      });
    }
  }

  bool get _haveSelectedQuestion {
    return _selectedQuestion < _quiz.length;
  }

  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntados'),
          centerTitle: true,
        ),
        body: _haveSelectedQuestion
            ? QuizContainer(quiz: _quiz, response: _response, selectedQuestion: _selectedQuestion, haveSelectedQuestion: _haveSelectedQuestion,)
            : Result()
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
