import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/questions_screen.dart';
import 'package:flutter_quiz_app/resules_screen.dart';
import 'package:flutter_quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //创建空数组存储 选择的 answer array
  List<String> selectedAnswers = [];
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(onSelectAnswer: chooseAnswer); //pass
    });
  }

  //function to add answer to selectedAnswers Array
  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    //检查列表中答案的数量，和 问题的数量是否相等
    //如果条件为真，表示用户已经回答了所有的问题
    //调用setState跳转屏幕
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResulesScreen(chosenAnswers: selectedAnswers);
      });
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: Colors.blue),
          child: activeScreen,
        ),
      ),
    );
  }
}
