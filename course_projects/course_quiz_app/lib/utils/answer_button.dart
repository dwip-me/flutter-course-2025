import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.onPressed,
    required this.ansButtonText,
  });

  final void Function() onPressed;
  final String ansButtonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 56, 15, 105),
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      ),
      child: Text(ansButtonText, textAlign: TextAlign.center),
    );
  }
}
