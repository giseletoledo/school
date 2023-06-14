import 'package:flutter/material.dart';

class AfazeresTab extends StatefulWidget {
  const AfazeresTab({super.key});

  @override
  State<StatefulWidget> createState() => _AfazeresTab();
}

class _AfazeresTab extends State<AfazeresTab> {
  int acumulador = 1;
  int acumulador2 = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$acumulador'),
        ElevatedButton(
          onPressed: () {
            setState(() {
              acumulador = acumulador + 1;
            });
          },
          child: Text('+1'),
        )
      ],
    );
  }
}
