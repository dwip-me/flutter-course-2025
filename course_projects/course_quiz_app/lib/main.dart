import 'package:course_quiz_app/quiz.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    Quiz(
      colors: [Colors.deepPurple, Colors.purpleAccent],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );
}
