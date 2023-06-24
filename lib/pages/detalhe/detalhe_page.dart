import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:school/entities/afazer_entity.dart';

import '../../components/body_component.dart';
import '../../providers/afazer_provider.dart';
import '../../services/picker_service.dart';
import 'components/detalhe_header.dart';

class DetalhePage extends StatefulWidget {
  final AfazerEntity item;
  final int index;

  const DetalhePage({super.key, required this.item, required this.index});

  @override
  State<DetalhePage> createState() => _DetalhePageState();
}

class _DetalhePageState extends State<DetalhePage> {
  late AfazerProvider store;

  void onEditImage() async {
    final pickerService = PickerService();
    final image = await pickerService.getImage(ImageSource.gallery);
    if (image != null) {
      final base64 = pickerService.base64(await image.readAsBytes());
      store.atualizarItemAfazer(widget.index, base64);
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    store = Provider.of<AfazerProvider>(context);
  }

  @override
  Widget build(BuildContext context) {
    store = Provider.of<AfazerProvider>(context);

    return BodyComponent(
      child: Column(
        children: [
          DetalheHeaderWidget(
            item: widget.item,
            onEdit: onEditImage,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: store.listaAfazeres.length,
              itemBuilder: (context, index) {
                final item = store.listaAfazeres.elementAt(index);
                return ListTile(
                  leading: Checkbox(
                    value: item.isConcluido,
                    onChanged: (value) {
                      setState(() {
                        item.isConcluido = value ?? false;
                      });
                    },
                  ),
                  title: Text(item.titulo),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
