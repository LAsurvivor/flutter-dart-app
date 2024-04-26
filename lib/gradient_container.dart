import 'package:first_app/style_text.dart';
import 'package:flutter/cupertino.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [
            Color.fromARGB(255, 159, 255, 191),
            Color.fromARGB(255, 255, 156, 95),
          ],
        ),
      ),
      child: Center(
        child: StyleText('Hello World!'),
      ),
    );
  }
}
