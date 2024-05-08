import 'package:first_app/questions_screen.dart';
import 'package:first_app/start_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({
    super.key,
  });

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 171, 151, 255),
                Color.fromARGB(255, 255, 195, 106),
              ],
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
