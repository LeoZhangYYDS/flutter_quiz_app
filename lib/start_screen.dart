import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});
  final void Function() switchScreen;

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

          // Opacity(
          //   opacity: 0.9,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
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
          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_right_alt),
            onPressed: switchScreen,
            style: const ButtonStyle(
              foregroundColor: WidgetStatePropertyAll(Colors.white),
              side: WidgetStatePropertyAll(BorderSide(color: Colors.white)),
            ),
            label: const Text('Start Quiz', style: TextStyle(fontSize: 15)),
          )
        ],
      ),
    );
  }
}
