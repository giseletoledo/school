import 'package:flutter/material.dart';

import '../entities/afazer_entity.dart';
import '../services/afazer_service.dart';

class AfazerProvider with ChangeNotifier {
  final service = AfazerService();
  List<AfazerEntity> _listaAfazeres = [];

  AfazerProvider() {
    buscarAfazeres();
  }

  buscarAfazeres() async {
    listaAfazeres = await service.buscar();
  }

  adicionarItem(AfazerEntity item) {
    listaAfazeres.add(item);
    service.salvar(listaAfazeres);
    notifyListeners();
  }

  removerItem(AfazerEntity item) {
    listaAfazeres.remove(item);
    service.salvar(listaAfazeres);
    notifyListeners();
  }

  List<AfazerEntity> get listaAfazeres => _listaAfazeres;

  set listaAfazeres(List<AfazerEntity> val) {
    _listaAfazeres = val;
    notifyListeners();
  }
}
