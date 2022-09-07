import 'package:freezed_annotation/freezed_annotation.dart';

part 'cliente_grupo_neto.freezed.dart';

@freezed
class ClienteGrupoNeto with _$ClienteGrupoNeto {
  const ClienteGrupoNeto._();
  const factory ClienteGrupoNeto(
      {required String clienteId,
      required String grupoNetoId,
      String? grupoNetoDescripcion,
      required DateTime lastUpdated,
      required bool deleted}) = _ClienteGrupoNeto;
}
