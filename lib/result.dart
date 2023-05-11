import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback restHandler;
  Result(this.resultScore, this.restHandler);
  String get resultPhrase {
    var resultText = 'u did it';
    if (resultScore <= 8) {
      resultText = 'you are awesome!';
    } else if (resultScore <= 12) {
      resultText = 'pretty good!';
    } else if (resultScore <= 16) {
      resultText = 'not thad bad!';
    } else {
      resultText = 'you are bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 55, 106, 32),
                onPrimary: Colors.white,
                // side:
                //     BorderSide(color: Color.fromARGB(0, 55, 106, 32), width: 2),
                padding: EdgeInsets.symmetric(horizontal: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(1000)),
                ),
              ),
              //side: BorderSide(width: 2, color: Colors.orange)),
              onPressed: restHandler,
              child: Text('Thank you!'))
        ],
      ),
    );
  }
}
