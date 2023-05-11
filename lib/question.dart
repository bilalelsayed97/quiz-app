import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15.0),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28, color: Color.fromARGB(255, 54, 50, 38)),
        textAlign: TextAlign.center,
      ),
    );
  }
}

// style: ButtonStyle(
//         backgroundColor: MaterialStateProperty.all(Colors.blue),

//       -------
//       foregroundColor: MaterialStateProperty.all(Colors.white)
