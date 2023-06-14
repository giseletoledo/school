import 'package:flutter/material.dart';
import 'package:school/components/spacer_component.dart';

class AfazeresTab extends StatefulWidget {
  final int valorinicial;
  const AfazeresTab({super.key, required this.valorinicial});

  @override
  State<StatefulWidget> createState() => _AfazeresTab();
}

class _AfazeresTab extends State<AfazeresTab> {
  late int acumulador;

  void somarMaisUm() {
    setState(() {
      acumulador++;
    });
  }

  @override
  void initState() {
    acumulador = widget.valorinicial;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$acumulador'),
        const SpacerComponent(),
        ElevatedButton(
          onPressed: somarMaisUm,
          child: const Text('+1'),
        )
      ],
    );
  }
}
