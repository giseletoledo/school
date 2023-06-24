import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school/pages/home/components/novo_item_widget.dart';

import '../../../app_routes.dart';
import '../../../entities/afazer_entity.dart';
import '../../../providers/afazer_provider.dart';
import '../components/item_widget.dart';

class AfazeresTab extends StatefulWidget {
  final int valorInicial;
  final void Function(int tabIndex)? callback;

  const AfazeresTab({super.key, required this.valorInicial, this.callback});

  @override
  State<StatefulWidget> createState() => _AfazeresTab();
}

class _AfazeresTab extends State<AfazeresTab> {
  late AfazerProvider store;

  void onDetalhes(AfazerEntity item, int idx) {
    Navigator.pushNamed(context, AppRoutes.detalhe);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    store = Provider.of<AfazerProvider>(context);
    return ListView.builder(
      itemCount: store.listaAfazeres.length,
      itemBuilder: (context, index) {
        final item = store.listaAfazeres.elementAt(index);
        return Dismissible(
          key: Key(item.uuid),
          onDismissed: (direction) {
            if (direction == DismissDirection.startToEnd ||
                direction == DismissDirection.endToStart) {
              handleExcluir(index);
            }
          },
          child: ItemWidget(
            item: item,
            onPressed: () {
              onDetalhes(item, index);
            },
          ),
        );
      },
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
              store.adicionarItem(item);
            })
          ],
        );
      },
    );
  }

  void handleExcluir(int index) {
    AfazerEntity item = store.listaAfazeres[index];
    store.removerItem(item);
  }
}
