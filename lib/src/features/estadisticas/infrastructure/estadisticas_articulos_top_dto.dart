import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/infrastructure/database.dart';

part 'estadisticas_articulos_top_dto.freezed.dart';
part 'estadisticas_articulos_top_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class EstadisitcasArticulosTopDTO
    with _$EstadisitcasArticulosTopDTO
    implements Insertable<EstadisitcasArticulosTopDTO> {
  const EstadisitcasArticulosTopDTO._();
  const factory EstadisitcasArticulosTopDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _EstadisitcasArticulosTopDTO;

  factory EstadisitcasArticulosTopDTO.fromJson(Map<String, dynamic> json) =>
      _$EstadisitcasArticulosTopDTOFromJson(json);

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return EstadisticasArticulosTopTableCompanion(
      articuloId: Value(articuloId),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(EstadisitcasArticulosTopDTO)
class EstadisticasArticulosTopTable extends Table {
  @override
  String get tableName => 'ESTADISTICAS_ARTICULOS_TOP';

  @override
  Set<Column> get primaryKey => {articuloId};

  TextColumn get articuloId => text().named('ARTICULO_ID')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
