import 'package:flutter/material.dart';
import 'package:quiz_flutter/response_button.dart';
import 'package:quiz_flutter/question_title.dart';

class QuizContainer extends StatelessWidget {
  final int selectedQuestion;
  final List<Map<String, Object>> quiz;
  final void Function() response;
  final bool haveSelectedQuestion;

  QuizContainer({
    @required this.selectedQuestion,
    @required this.quiz,
    @required this.response,
    @required this.haveSelectedQuestion,
  });

  @override
  Widget build(BuildContext context) {
    List<String> allOptions =
        haveSelectedQuestion ? quiz[selectedQuestion]['options'] : null;
    return Column(
      children: <Widget>[
        QuestionTitle(quiz[selectedQuestion]['question']),
        ...allOptions.map((text) => ResponseButton(text, response)).toList()
      ],
    );
  }
}
