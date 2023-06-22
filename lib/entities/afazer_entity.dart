// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:school/entities/afazer_checklist_entity.dart';

class AfazerEntity {
  String uuid;
  String titulo;
  DateTime dataInicio;
  DateTime dataFim;
  bool? isConcluido;
  List<AfazerChecklistEntity>? conteudos;
  String? imagem;

  AfazerEntity({
    required this.uuid,
    required this.titulo,
    required this.dataInicio,
    required this.dataFim,
    this.isConcluido,
    this.conteudos,
    this.imagem,
  });
}
