import 'package:flutter/material.dart';
import 'package:school/components/spacer_component.dart';
import 'package:school/entities/afazer_entity.dart';

import '../../../components/custom_card_list_component.dart';

class AfazeresTab extends StatefulWidget {
  final int valorInicial;
  final void Function(int tabIndex)? callback;

  const AfazeresTab({super.key, required this.valorInicial, this.callback});

  @override
  State<StatefulWidget> createState() => _AfazeresTab();
}

class _AfazeresTab extends State<AfazeresTab> {
  late List<AfazerEntity> _listaAfazeres;

  @override
  void initState() {
    _listaAfazeres = [
      AfazerEntity(
          uuid: 'teste1',
          titulo: 'Teste 1',
          dataInicio: DateTime.now(),
          dataFim: DateTime.now(),
          isConcluido: true),
      AfazerEntity(
          uuid: 'teste2',
          titulo: 'Teste 2',
          dataInicio: DateTime.now(),
          dataFim: DateTime.now(),
          isConcluido: false),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: handleAdicionar,
          child: const Text('Adicionar'),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 400,
          child: ListView.builder(
            itemCount: _listaAfazeres.length,
            itemBuilder: (context, index) {
              final item = _listaAfazeres.elementAt(index);
              final isConcluido = item.isConcluido ?? false;
              return Dismissible(
                key: Key(item.uuid),
                onDismissed: (direction) {
                  if (direction == DismissDirection.startToEnd) {
                    handleExcluir(index);
                  }
                },
                child: CustomCardListItem(
                  icon: isConcluido ? Icons.done_all : Icons.done,
                  iconColor: isConcluido ? Colors.green : Colors.grey,
                  title: item.titulo,
                ),
              );
            },
          ),
        ),
        const SpacerComponent(),
      ],
    );
  }

  void handleAdicionar() {
    final item = AfazerEntity(
      uuid: 'teste3',
      titulo: 'Teste 3',
      dataInicio: DateTime.now(),
      dataFim: DateTime.now(),
      isConcluido: false,
    );

    _listaAfazeres.add(item);

    setState(() {
      _listaAfazeres = _listaAfazeres;
    });
  }

  void handleExcluir(int index) {
    _listaAfazeres.removeAt(index);
    setState(() {
      _listaAfazeres = _listaAfazeres;
    });
  }
}
