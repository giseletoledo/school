import 'package:flutter/material.dart';

import '../entities/afazer_entity.dart';
import '../services/afazer_service.dart';

class AfazerProvider with ChangeNotifier {
  final service = AfazerService();
  List<AfazerEntity> _listaAfazeres = [];
  AfazerEntity? _selecionado;
  int? _idx;

  List<AfazerEntity> get listaAfazeres => _listaAfazeres;

  AfazerEntity? get selecionado => _selecionado;

  set selecionado(AfazerEntity? val) {
    _selecionado = val;
    notifyListeners();
  }

  set idx(int val) {
    _idx = val;
    notifyListeners();
  }

  set listaAfazeres(List<AfazerEntity> val) {
    _listaAfazeres = val;
    service.salvar(_listaAfazeres);
    notifyListeners();
  }

  AfazerProvider() {
    buscarAfazeres();
  }

  buscarAfazeres() async {
    listaAfazeres = await service.buscar();
  }

  void atualizarItemAfazer(int idx) {
    if (selecionado != null) {
      _listaAfazeres[idx] = _selecionado!;
      notifyListeners();
    }
  }

  adicionarItem(AfazerEntity item) {
    listaAfazeres = [item, ...listaAfazeres];
    service.salvar(listaAfazeres);
    notifyListeners();
  }

  removerItem(int index) {
    listaAfazeres.removeAt(index);
    service.salvar(listaAfazeres);
    notifyListeners();
  }
}
