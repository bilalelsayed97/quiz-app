import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {}
var _questionIndex = 0;

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  static const _questions = [
    {
      'questionTexti': 'what is ur fav color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 7},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionTexti': 'what is ur fav pet\'s ?',
      'answers': [
        {'text': 'Cat', 'score': 1},
        {'text': 'Dog', 'score': 1},
        {'text': 'Lion', 'score': 10},
        {'text': 'Rabbit', 'score': 4}
      ]
    },
    {
      'questionTexti': 'which one you love more ?',
      'answers': [
        {'text': 'Baba', 'score': 1},
        {'text': 'Mama', 'score': 1},
        {'text': 'Sister', 'score': 1},
        {'text': 'Brother', 'score': 1}
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 253, 253, 246),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 55, 106, 32),
          elevation: 0,
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  _questionIndex = 0;
                });
              },
              icon: Icon(Icons.menu),
            ),
          ],
          leading: Icon(
            Icons.star,
            color: Colors.white,
          ),
          title: const Text('Personality Test'),
        ),
        body: _questionIndex < _questions.length
            ? Column(
                children: [
                  Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  ),
                ],
              )
            : Result(_totalScroe, _restQuiz),
      ),
    );
  }

  var _totalScroe = 0;
  void _restQuiz() {
    setState(() {
      _totalScroe = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScroe += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
      if (_questionIndex == _questions.length) {
        //_questionIndex = 0;
      }
      ;
    });
  }
}







// ElevatedButton(
//               onPressed: () {
//                 print(_questionIndex);
//                 _answerQuestion();
//               },
//               child: Text('next')),
//           ElevatedButton(
//               onPressed: () {
//                 _restQuestion();
//                 print(_questionIndex);
//               },
//               child: Text('Default')),
//           ElevatedButton(
//               onPressed: () {
//                 backQuestion();
//                 print(_questionIndex);
//               },
//               child: Text('back')),