import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int result = 0;
  String resultText = "";
  VoidCallback restart;
  Result(int result, this.restart) {
    this.result = result;
    if (result >= 0 && result <= 20) {
      this.resultText = "Better Luck next time!! Score: $result";
    } else if (result > 20 && result <= 40) {
      this.resultText = "That was a fair performance!! Score: $result";
    } else {
      this.resultText = "Woah!! You just nailed it. Score: $result";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultText,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      TextButton(
        child: Text("Start Again"),
        onPressed: restart,
      ),
    ]));
  }
}
