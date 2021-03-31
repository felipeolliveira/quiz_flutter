import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  Result(this.score);

  String get resultMessage {
    if (this.score < 8) {
      return 'Parabéns';
    } else if (this.score < 12) {
      return 'Você é bom';
    } else if (this.score < 16) {
      return 'Você é muito bom';
    } else {
      return 'Você é muito muito bom';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "Parabéns",
      style: TextStyle(
          color: Colors.blue, fontSize: 32, fontWeight: FontWeight.bold),
    ));
  }
}
