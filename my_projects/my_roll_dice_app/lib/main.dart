import 'package:flutter/material.dart';
import 'package:my_roll_dice_app/background_gradient.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: BackgroundGradient(
          gradientColors: [
            Colors.deepPurple.shade900,
            Colors.deepPurpleAccent.shade400,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    ),
  );
}
