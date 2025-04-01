import 'package:course_roll_dice_app/home.dart';
import 'package:flutter/material.dart';

class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient({
    super.key,
    required this.gradientColor,
    required this.alignmentBegin,
    required this.alignmentEnd,
  });

  final List<Color> gradientColor;
  final AlignmentGeometry alignmentBegin;
  final AlignmentGeometry alignmentEnd;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColor,
          begin: alignmentBegin,
          end: alignmentEnd,
        ),
      ),
      child: Home(),
    );
  }
}
