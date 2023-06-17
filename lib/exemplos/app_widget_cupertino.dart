import 'package:flutter/cupertino.dart';

class CupertinoExemploApp extends StatelessWidget {
  const CupertinoExemploApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoPageScaffold(
          child: Center(
        child: CupertinoButton.filled(
          child: const Text('botão'),
          onPressed: () {},
        ),
      )),
    );
  }
}
