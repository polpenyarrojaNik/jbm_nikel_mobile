import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/remote_database.dart';

part 'estadisticas_venta_cliente_usuario_dto.freezed.dart';
part 'estadisticas_venta_cliente_usuario_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class EstadisticasVentaClienteUsuarioDTO
    with _$EstadisticasVentaClienteUsuarioDTO
    implements Insertable<EstadisticasVentaClienteUsuarioDTO> {
  const EstadisticasVentaClienteUsuarioDTO._();
  const factory EstadisticasVentaClienteUsuarioDTO({
    @JsonKey(name: 'ANYO') required double anyo,
    @JsonKey(name: 'MES') required double mes,
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'UNIDADES') double? unidades,
    @JsonKey(name: 'IMPORTE') double? importe,
    @JsonKey(name: 'COSTE') double? coste,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _EstadisticasVentaClienteUsuarioDTO;

  factory EstadisticasVentaClienteUsuarioDTO.fromJson(
          Map<String, dynamic> json) =>
      _$EstadisticasVentaClienteUsuarioDTOFromJson(json);

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return EstadisticasClienteUsuarioVentasTableCompanion(
      anyo: Value(anyo),
      mes: Value(mes),
      clienteId: Value(clienteId),
      articuloId: Value(articuloId),
      unidades: Value(unidades),
      importe: Value(importe),
      coste: Value(coste),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(EstadisticasVentaClienteUsuarioDTO)
class EstadisticasClienteUsuarioVentasTable extends Table {
  @override
  String get tableName => 'ESTADISTICAS_VENTA';

  @override
  Set<Column> get primaryKey => {anyo, mes, clienteId, articuloId};

  RealColumn get anyo => real().named('ANYO')();
  RealColumn get mes => real().named('MES')();
  TextColumn get clienteId => text().named('CLIENTE_ID')();
  TextColumn get articuloId => text().named('ARTICULO_ID')();
  RealColumn get unidades => real().nullable().named('UNIDADES')();
  RealColumn get importe => real().nullable().named('IMPORTE')();
  RealColumn get coste => real().nullable().named('COSTE')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
