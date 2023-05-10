import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/remote_database.dart';

import '../domain/devolucion_estado.dart';
import '../domain/devolucion_linea.dart';
import '../domain/devolucion_motivo.dart';

part 'devolucion_linea_dto.freezed.dart';
part 'devolucion_linea_dto.g.dart';

// ignore_for_file: invalid_annotation_target
@freezed
class DevolucionLineaDTO
    with _$DevolucionLineaDTO
    implements Insertable<DevolucionLineaDTO> {
  const DevolucionLineaDTO._();
  const factory DevolucionLineaDTO({
    @JsonKey(name: 'EMPRESA_ID') required String empresaId,
    @JsonKey(name: 'DEVOLUCION_ID') required String devolucionId,
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'ARTICULO_DESCRIPCION') required String articuloDescription,
    @JsonKey(name: 'CANTIDAD_DEVOLUCION') double? cantidadDevolucion,
    @JsonKey(name: 'CANTIDAD_RECIBIDA') double? cantidadRecibida,
    @JsonKey(name: 'DEVOLUCION_MOTIVO_ID') String? devolucionMotivoId,
    @JsonKey(name: 'DEVOLUCION_ESTADO_ID') String? devolucionEstadoId,
    @JsonKey(name: 'OBSERVACIONES') String? observaciones,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') required String deleted,
  }) = _DevolucionLineaDTO;

  factory DevolucionLineaDTO.fromJson(Map<String, dynamic> json) =>
      _$DevolucionLineaDTOFromJson(json);

  DevolucionLinea toDomain(
      DevolucionMotivo devolucionMotivo, DevolucionEstado devolucionEstado) {
    return DevolucionLinea(
        empresaId: empresaId,
        devolucionId: devolucionId,
        articuloId: articuloId,
        articuloDescription: articuloDescription,
        cantidadDevolucion: cantidadDevolucion,
        cantidadRecibida: cantidadRecibida,
        devolucionMotivo: devolucionMotivo,
        devolucionEstado: devolucionEstado,
        observaciones: observaciones,
        lastUpdated: lastUpdated,
        deleted: (deleted == 'S') ? true : false);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return DevolucionLineaTableCompanion(
      empresaId: Value(empresaId),
      devolucionId: Value(devolucionId),
      articuloId: Value(articuloId),
      articuloDescription: Value(articuloDescription),
      cantidadDevolucion: Value(cantidadDevolucion),
      cantidadRecibida: Value(cantidadRecibida),
      devolucionEstadoId: Value(devolucionEstadoId),
      devolucionMotivoId: Value(devolucionMotivoId),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(DevolucionLineaDTO)
class DevolucionLineaTable extends Table {
  TextColumn get empresaId => text().named('EMPRESA_ID')();
  TextColumn get devolucionId => text().named('DEVOLUCION_ID')();
  TextColumn get articuloId => text().named('ARTICULO_ID')();
  TextColumn get articuloDescription => text().named('ARTICULO_DESCRIPCION')();
  RealColumn get cantidadDevolucion =>
      real().nullable().named('CANTIDAD_DEVOLUCION')();
  RealColumn get cantidadRecibida =>
      real().nullable().named('CANTIDAD_RECIBIDA')();
  TextColumn get devolucionEstadoId =>
      text().nullable().named('DEVOLUCION_ESTADO_ID')();
  TextColumn get devolucionMotivoId =>
      text().nullable().named('DEVOLUCION_MOTIVO_ID')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();

  @override
  Set<Column> get primaryKey => {devolucionId, empresaId, articuloId};

  @override
  String get tableName => 'DEVOLUCIONES_LINEAS';
}
