import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Learn Flutter the Fine Way!",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton(
            onPressed: () {},
            style: const ButtonStyle(
              foregroundColor: WidgetStatePropertyAll(Colors.white),
              side: WidgetStatePropertyAll(BorderSide(color: Colors.white)),
            ),
            child: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
