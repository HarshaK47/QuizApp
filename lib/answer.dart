import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  VoidCallback selectHandler;
  String ans = "";
  
  
  Answer(this.selectHandler, this.ans);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Text(ans),
        onPressed: selectHandler,
      ),
    );
  }
}
