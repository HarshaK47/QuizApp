
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': "What is the capital of India?",
      'answers': [
        {'text': 'Amritsar', 'score': 0},
        {'text': 'Mumbai', 'score': 0},
        {'text': 'New Delhi', 'score': 10}
      ]
    },
    {
      'questionText': "What is the national animal of India?",
      'answers': [
        {'text': 'Tiger', 'score': 10},
        {'text': 'Bear', 'score': 0},
        {'text': 'Panda', 'score': 0}
      ]
    },
    {
      'questionText': "Which company did Elon Musk recently take over?",
      'answers': [
        {'text': 'Amazon', 'score': 0},
        {'text': 'Microsoft', 'score': 0},
        {'text': 'Twitter', 'score': 10}
      ]
    },
    {
      'questionText': "Who won the T20 World Cup in 2022?",
      'answers': [
        {'text': 'India', 'score': 0},
        {'text': 'England', 'score': 10},
        {'text': 'Pakistan', 'score': 0}
      ]
    },
    {
      'questionText': "Who was the leading run scorer in the T20 World Cup 2022?",
      'answers': [
        {'text': 'Virat Kohli', 'score': 10},
        {'text': 'Babar Azam', 'score': 0},
        {'text': 'Suryakumar Yadav', 'score': 0}
      ]
    },
  ];

  // var _counterPressed = 0;

  void _answerQuestion(int score) {

    _totalScore+=score;
    setState(() {
      _questionIndex++;
      // if (_questionIndex == questions.length) {
      //   _questionIndex = 0;
      // }

      // _counterPressed++;
    });

    print('Answer chosen');
    print(_questionIndex);
  }
  

  void restartQuiz(){
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Quiz App')),
      body: _questionIndex < _questions.length
          ? Quiz(_questions,_answerQuestion,_questionIndex)
          : Result(_totalScore, restartQuiz),
    ));
  }
}
