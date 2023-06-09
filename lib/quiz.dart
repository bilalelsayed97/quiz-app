import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz(
      {required this.answerQuestion,
      required this.questions,
      required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[questionIndex]['questionTexti'] as String,
      ),
      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answerzzz) {
        return Answer(() => answerQuestion(answerzzz['score']),
            answerzzz['text'] as String);
      }).toList()
    ]);
  }
}
