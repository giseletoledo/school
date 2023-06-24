import 'package:flutter/material.dart';

import '../entities/afazer_entity.dart';
import '../services/afazer_service.dart';

class AfazerProvider with ChangeNotifier {
  final service = AfazerService();
  List<AfazerEntity> _listaAfazeres = [];

  List<AfazerEntity> get listaAfazeres => _listaAfazeres;

  set listaAfazeres(List<AfazerEntity> val) {
    _listaAfazeres = val;
    notifyListeners();
  }

  AfazerProvider() {
    buscarAfazeres();
  }

  buscarAfazeres() async {
    listaAfazeres = await service.buscar();
  }

  void atualizarItemAfazer(int idx, String image) {
    listaAfazeres.elementAt(idx).image = image;
    notifyListeners();
  }

  adicionarItem(AfazerEntity item) {
    listaAfazeres = [item, ...listaAfazeres];
    service.salvar(listaAfazeres);
    notifyListeners();
  }

  removerItem(AfazerEntity item) {
    listaAfazeres.remove(item);
    service.salvar(listaAfazeres);
    notifyListeners();
  }
}
