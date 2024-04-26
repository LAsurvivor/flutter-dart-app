import 'package:flutter/cupertino.dart';

class StyledText extends StatelessWidget {
  const StyledText(
    this.text, {
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 255, 255, 255),
        fontFamily: 'cursive',
      ),
    );
  }
}
