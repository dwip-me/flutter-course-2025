import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            color: const Color.fromARGB(204, 255, 255, 255),
            width: 300,
          ),
          SizedBox(height: 25),
          Text(
            "Learn Flutter The Fun Way!",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {},
            label: Text("Start Quiz"),
            icon: Icon(Icons.arrow_right_alt_rounded),
          ),
        ],
      ),
    );
  }
}
