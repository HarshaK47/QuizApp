// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText = "ee";

  Question(String question) {
    this.questionText = question;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(
            fontSize: 30,
          ),
          textAlign: TextAlign.center,
        ));
  }
}
