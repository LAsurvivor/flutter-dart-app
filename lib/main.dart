import 'package:flutter/cupertino.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CupertinoPageScaffold(
        child: GradientContainer.purple(),
      ),
    );
  }
}
