import 'package:flutter/material.dart';
import 'package:quiz_flutter/quiz_container.dart';
import 'package:quiz_flutter/result.dart';

main() => runApp(QuizApp());

class _QuizAppState extends State<QuizApp> {
  var _selectedQuestion = 0;
  var _totalScore = 0;

  final _quiz = const [
    {
      'question': 'Qual é a sua cor favorita?',
      'options': [
        {'text': 'Preto', 'score': 10},
        {'text': 'Vermelho', 'score': 7},
        {'text': 'Verde', 'score': 4},
        {'text': 'Azul', 'score': 1},
      ]
    },
    {
      'question': 'Qual é a sua comida favorita?',
      'options': [
        {'text': 'Macarronada', 'score': 10},
        {'text': 'Picanha', 'score': 8},
        {'text': 'Salada', 'score': 5},
        {'text': 'Doces', 'score': 3},
      ]
    },
    {
      'question': 'Qual é o seu tipo de filme favorito?',
      'options': [
        {'text': 'Aventura', 'score': 10},
        {'text': 'Romance', 'score': 5},
        {'text': 'Ficção Científica', 'score': 8},
        {'text': 'Ação', 'score': 3},
        {'text': 'Comédia', 'score': 1},
      ]
    }
  ];

  void _response(int score) {
    if (_haveSelectedQuestion) {
      setState(() {
        _selectedQuestion++;
        _totalScore += score;
      });
    }

    print(score);
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
              ? QuizContainer(
                  quiz: _quiz,
                  response: _response,
                  selectedQuestion: _selectedQuestion,
                  haveSelectedQuestion: _haveSelectedQuestion,
                )
              : Result(_totalScore)),
    );
  }
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() {
    return _QuizAppState();
  }
}
