import 'package:flutter/material.dart';
import 'package:quiz_flutter/response_button.dart';
import 'package:quiz_flutter/question_title.dart';

class QuizContainer extends StatelessWidget {
  final int selectedQuestion;
  final List<Map<String, Object>> quiz;
  final void Function(int) response;
  final bool haveSelectedQuestion;

  QuizContainer({
    @required this.selectedQuestion,
    @required this.quiz,
    @required this.response,
    @required this.haveSelectedQuestion,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> allOptions = this.haveSelectedQuestion
        ? this.quiz[selectedQuestion]['options']
        : null;

    return Column(
      children: <Widget>[
        QuestionTitle(this.quiz[selectedQuestion]['question']),
        ...allOptions
            .map((option) =>
                ResponseButton(option['text'], () => response(option['score'])))
            .toList()
      ],
    );
  }
}
