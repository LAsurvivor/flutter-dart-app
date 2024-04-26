import 'package:flutter/cupertino.dart';

class StyleText extends StatelessWidget {
  const StyleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '谢谢',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 255, 255, 255),
          fontFamily: 'cursive',
        ),
      ),
    );
  }
}