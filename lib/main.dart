import 'package:flutter/material.dart';
import 'package:quiz_flutter/response_button.dart';
import 'package:quiz_flutter/question_title.dart';
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
    if (haveSelectQuestion) {
      setState(() {
        _selectedQuestion++;
      });
    }
  }

  bool get haveSelectQuestion {
    return _selectedQuestion < _quiz.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> allOptions =
        haveSelectQuestion ? _quiz[_selectedQuestion]['options'] : null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntados'),
          centerTitle: true,
        ),
        body: haveSelectQuestion
            ? Column(
                children: <Widget>[
                  QuestionTitle(_quiz[_selectedQuestion]['question']),
                  ...allOptions
                      .map((text) => ResponseButton(text, _response))
                      .toList()
                ],
              )
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
