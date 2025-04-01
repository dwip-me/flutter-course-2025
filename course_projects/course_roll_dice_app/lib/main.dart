import 'package:course_roll_dice_app/background_gradient.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: BackgroundGradient(
          gradientColor: [
            const Color.fromARGB(255, 43, 16, 90),
            const Color.fromARGB(255, 63, 33, 146),
          ],
          alignmentBegin: Alignment.topCenter,
          alignmentEnd: Alignment.bottomCenter,
        ),
      ),
    ),
  );
}
