import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: Color.fromARGB(255, 79, 77, 165)),
          child: const StartScreen(),
        ),
      ),
    );
  }
}
