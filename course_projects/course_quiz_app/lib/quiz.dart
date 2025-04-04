import 'package:course_quiz_app/home.dart';
import 'package:course_quiz_app/questions_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({
    super.key,
    required this.colors,
    required this.begin,
    required this.end,
  });

  final List<Color> colors;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  late Widget activeScreen;

  @override
  void initState() {
    activeScreen = Home(startQuiz: switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: widget.colors,
              begin: widget.begin,
              end: widget.end,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
