import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:jbm_nikel_mobile/src/core/infrastructure/local_database.dart';

part 'sync_datetime_dto.freezed.dart';
part 'sync_datetime_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class SyncDateTimeDTO
    with _$SyncDateTimeDTO
    implements Insertable<SyncDateTimeDTO> {
  const SyncDateTimeDTO._();
  const factory SyncDateTimeDTO({
    @JsonKey(name: 'ID') required int id,
    @JsonKey(name: 'DB_SCHEMA_VERSION') required int dbSchemaVersion,
    @JsonKey(name: 'ARTICULO_ULTIMA_SYNC') required DateTime articuloUltimaSync,
    @JsonKey(name: 'CLIENTE_ULTIMA_SYNC') required DateTime clienteUltimaSync,
    @JsonKey(name: 'PEDIDO_ULTIMA_SYNC') required DateTime pedidoUltimaSync,
    @JsonKey(name: 'VISITA_ULTIMA_SYNC') required DateTime visitaUltimaSync,
  }) = _SyncDateTimeDTO;

  factory SyncDateTimeDTO.fromJson(Map<String, dynamic> json) =>
      _$SyncDateTimeDTOFromJson(json);

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return SyncDateTimeTableCompanion(
      id: Value(id),
      dbSchemaVersion: Value(dbSchemaVersion),
      articuloUltimaSync: Value(articuloUltimaSync),
      clienteUltimaSync: Value(clienteUltimaSync),
      pedidoUltimaSync: Value(pedidoUltimaSync),
      visitaUltimaSync: Value(visitaUltimaSync),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(SyncDateTimeDTO)
class SyncDateTimeTable extends Table {
  @override
  String get tableName => 'SYNC_DATETIME';

  @override
  Set<Column> get primaryKey => {dbSchemaVersion};

  IntColumn get dbSchemaVersion => integer().named('DB_SCHEMA_VERSION')();
  DateTimeColumn get articuloUltimaSync =>
      dateTime().named('ARTICULO_ULTIMA_SYNC')();
  DateTimeColumn get clienteUltimaSync =>
      dateTime().named('CLIENTE_ULTIMA_SYNC')();
  DateTimeColumn get pedidoUltimaSync =>
      dateTime().named('PEDIDO_ULTIMA_SYNC')();
  DateTimeColumn get visitaUltimaSync =>
      dateTime().named('VISITA_ULTIMA_SYNC')();
}
