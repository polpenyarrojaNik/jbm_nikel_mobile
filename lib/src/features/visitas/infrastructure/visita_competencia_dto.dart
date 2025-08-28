import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/infrastructure/remote_database.dart';

part 'visita_competencia_dto.freezed.dart';
part 'visita_competencia_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class VisitaCompetenciaDTO
    with _$VisitaCompetenciaDTO
    implements Insertable<VisitaCompetenciaDTO> {
  const VisitaCompetenciaDTO._();
  const factory VisitaCompetenciaDTO({
    @JsonKey(name: 'COD_VISITA') required String visitaId,
    @JsonKey(name: 'CODIGO_COMPETENCIA') required int codigoCompetencia,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _VisitaCompetenciaDTO;

  factory VisitaCompetenciaDTO.fromJson(Map<String, dynamic> json) =>
      _$VisitaCompetenciaDTOFromJson(json);

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return VisitaCompetenciaTableCompanion(
      visitaId: Value(visitaId),
      codigoCompetencia: Value(codigoCompetencia),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(VisitaCompetenciaDTO)
class VisitaCompetenciaTable extends Table {
  @override
  String get tableName => 'VISITA_COMPETENCIAS';

  @override
  Set<Column> get primaryKey => {visitaId, codigoCompetencia};

  TextColumn get visitaId => text().named('COD_VISITA')();
  IntColumn get codigoCompetencia => integer().named('CODIGO_COMPETENCIA')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
