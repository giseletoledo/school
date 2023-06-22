import 'package:flutter/material.dart';
import 'package:school/components/novo_item_widget.dart';
import 'package:school/components/spacer_component.dart';
import 'package:school/entities/afazer_entity.dart';

import '../../../components/item_widget.dart';

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
              return Dismissible(
                key: Key(item.uuid),
                onDismissed: (direction) {
                  if (direction == DismissDirection.startToEnd) {
                    handleExcluir(index);
                  }
                },
                child: ItemWidget(
                  item: item,
                  onPressed: () {
                    handleAdicionar();
                  },
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
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          contentPadding: const EdgeInsets.all(16.0),
          children: [
            NovoItemWidget(callback: (item) {
              _listaAfazeres.add(item);
              setState(() {
                _listaAfazeres = _listaAfazeres;
              });
            })
          ],
        );
      },
    );
  }

  void handleExcluir(int index) {
    _listaAfazeres.removeAt(index);
    setState(() {
      _listaAfazeres = _listaAfazeres;
    });
  }
}