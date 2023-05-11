import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Answer extends StatelessWidget {
  final VoidCallback answer;
  final String answerText;
  Answer(this.answer, this.answerText) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 30, right: 30, top: 10),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Color.fromARGB(69, 217, 231, 203),
          primary: Color.fromARGB(255, 54, 50, 38),
          padding: EdgeInsets.symmetric(horizontal: 16),
          // side: BorderSide(width: 1.5, color: Color.fromARGB(255, 55, 106, 32)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
        onPressed: answer,
        child: Text(answerText),
      ),
    );
  }
}
