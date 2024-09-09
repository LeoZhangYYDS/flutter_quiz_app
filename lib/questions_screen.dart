import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/answer_button.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void nextQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        //currentQuestionIndex = currentQuestionIndex + 1;
        //currentQuestionIndex += 1;
        currentQuestionIndex++;
      } else {
        print('all done');
      }
    });
  }

  @override
  Widget build(context) {
    final currentQuestions = questions[currentQuestionIndex];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestions.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            ...currentQuestions.shuffledAnswers().map((item) {
              return AnswerButton(item, nextQuestion);
            }),
          ],
        ),
      ),
    );
  }
}
