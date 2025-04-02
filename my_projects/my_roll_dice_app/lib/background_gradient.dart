import 'package:flutter/material.dart';
import 'package:my_roll_dice_app/home.dart';

class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient({
    super.key,
    required this.gradientColors,
    required this.begin,
    required this.end,
  });

  final List<Color> gradientColors;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: begin,
          end: end,
        ),
      ),
      child: Home(),
    );
  }
}
