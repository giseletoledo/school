import 'package:flutter/material.dart';

class AfazeresTab extends StatelessWidget {
  int acumulador = 1;

  AfazeresTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$acumulador'),
        ElevatedButton(
          onPressed: () {
            acumulador = acumulador + 1;
          },
          child: Text('+1'),
        )
      ],
    );
  }
}
