import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {
    super.key,
  });

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(200, 255, 255, 255),
        ),
        // Opacity(
        //   opacity: 0.8,
        //   child: Image.asset(
        //     'assets/images/quiz-logo.png',
        //     width: 300,
        //   ),
        // ),
        const SizedBox(height: 80),
        const Text(
          'Learn Flutter the Fun Way!',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 80),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 10,
            ),
            side: const BorderSide(
              color: Color.fromARGB(255, 255, 255, 255),
              width: 2,
            ),
            textStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          icon: const Icon(
            Icons.arrow_right_alt,
            color: Colors.white,
          ),
          label: const Text(
            'Start Quiz',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        )
      ],
    ));
  }
}
