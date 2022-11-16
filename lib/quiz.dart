import 'package:flutter/material.dart';
import "./answer.dart";
import "./question.dart";


class Quiz extends StatelessWidget {

  List questions=[];
  int questionIndex=0;
  Function answerQuestion;

  Quiz(this.questions, this.answerQuestion, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text('+10 for correct, 0 for wrong'),
      Question(
        questions[questionIndex]['questionText'] as String
      ),
      ...(questions[questionIndex]['answers'] as List).map((ans) {
        return (Answer(()=> answerQuestion(ans['score']), ans['text']));
      }).toList(),

      // Question("You have pressed the button $_counterPressed times"),
    ]);
  }
}
