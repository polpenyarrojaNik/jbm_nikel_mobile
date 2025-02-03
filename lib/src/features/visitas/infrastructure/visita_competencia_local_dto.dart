import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/infrastructure/local_database.dart';
import '../domain/visita_competidor.dart';

part 'visita_competencia_local_dto.freezed.dart';
part 'visita_competencia_local_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class VisitaCompetenciaLocalDTO
    with _$VisitaCompetenciaLocalDTO
    implements Insertable<VisitaCompetenciaLocalDTO> {
  const VisitaCompetenciaLocalDTO._();
  const factory VisitaCompetenciaLocalDTO({
    @JsonKey(name: 'COD_VISITA_APP') required String visitaAppId,
    @JsonKey(name: 'CODIGO_COMPETENCIA') required int codigoCompetencia,
  }) = _VisitaCompetenciaLocalDTO;

  factory VisitaCompetenciaLocalDTO.fromJson(Map<String, dynamic> json) =>
      _$VisitaCompetenciaLocalDTOFromJson(json);

  factory VisitaCompetenciaLocalDTO.fromDomain(
          String visitaAppId, VisitaCompetidor visitaCompetidor) =>
      VisitaCompetenciaLocalDTO(
          visitaAppId: visitaAppId, codigoCompetencia: visitaCompetidor.id);

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return VisitaCompetenciaLocalTableCompanion(
      visitaAppId: Value(visitaAppId),
      codigoCompetencia: Value(codigoCompetencia),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(VisitaCompetenciaLocalDTO)
class VisitaCompetenciaLocalTable extends Table {
  @override
  String get tableName => 'VISITA_COMPETENCIAS_IMP';

  @override
  Set<Column> get primaryKey => {visitaAppId, codigoCompetencia};

  TextColumn get visitaAppId => text().named('COD_VISITA_APP')();
  IntColumn get codigoCompetencia => integer().named('CODIGO_COMPETENCIA')();
}
