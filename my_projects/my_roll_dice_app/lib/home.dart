import 'dart:math';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const String filePath = "assets/dice-images";

  final List<String> diceImages = [
    "$filePath/dice-1.png",
    "$filePath/dice-2.png",
    "$filePath/dice-3.png",
    "$filePath/dice-4.png",
    "$filePath/dice-5.png",
    "$filePath/dice-6.png",
  ];

  int diceNum = 1;
  final randomNum = Random();

  void rollDice() {
    setState(() {
      diceNum = randomNum.nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Column(
            children: [
              Semantics(
                image: true,
                label: 'Dice showing ${diceNum + 1}',
                child: Image.asset(diceImages[diceNum], width: 250),
              ),
              SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: rollDice,
                label: Text(
                  "ROLL",
                  style: TextStyle(fontSize: 25, letterSpacing: 5),
                ),
                icon: Icon(Icons.replay_rounded),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
