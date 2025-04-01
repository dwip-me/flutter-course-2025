import 'dart:math';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final randomNum = Random();
  int diceNum = 1;

  void rollDice() {
    setState(() {
      diceNum = randomNum.nextInt(6) + 1;
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
              Image.asset("assets/dice-images/dice-$diceNum.png", width: 250),
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
