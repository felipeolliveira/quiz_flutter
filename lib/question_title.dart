import 'package:flutter/material.dart';

class QuestionTitle extends StatelessWidget {
  final String text;

  QuestionTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        text,
        style: TextStyle(
        fontSize: 24,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
